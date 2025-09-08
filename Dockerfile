# -------- Base builder --------
FROM node:20-alpine AS deps
WORKDIR /app
COPY package.json package-lock.json* pnpm-lock.yaml* yarn.lock* ./
RUN       if [ -f package-lock.json ]; then npm ci;       elif [ -f yarn.lock ]; then yarn --frozen-lockfile;       elif [ -f pnpm-lock.yaml ]; then corepack enable && pnpm i --frozen-lockfile;       else npm i; fi

# -------- Build phase --------
FROM node:20-alpine AS builder
WORKDIR /app
COPY --from=deps /app/node_modules ./node_modules
COPY . .
RUN npm run build

# -------- Runner --------
FROM node:20-alpine AS runner
WORKDIR /app
ENV NODE_ENV=production
ENV NEXT_TELEMETRY_DISABLED=1
COPY --from=builder /app/public ./public
COPY --from=builder /app/.next/standalone ./
COPY --from=builder /app/.next/static ./.next/static
EXPOSE 3000
CMD ["node", "server.js"]
