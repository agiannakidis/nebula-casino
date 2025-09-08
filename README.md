# Nebula Casino — Dockerized Next.js (MVP)
Dark-themed crypto casino front (Novomatic launcher). Ready for Docker, GitHub and Vercel if needed.

## Quick start (Docker)
```bash
docker build -t nebula-casino .
docker run --rm -p 3000:3000 nebula-casino
# or
docker compose up --build
```

Open http://localhost:3000

## Dev (local)
```bash
npm install
npm run dev
```

## GitHub
```bash
git init
git add .
git commit -m "Initial commit: Nebula Casino Dockerized Next.js MVP"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/nebula-casino.git
git push -u origin main
```

## Where to paste the app code
- Replace `app/page.tsx` with your full front-end code (from our design/canvas).
- Ensure `public/novomatic_games_with_icons.json` is present.

## ENV (planned)
- NEXT_PUBLIC_NOVO_OPERATOR_ID
- NEXT_PUBLIC_NOVO_BASE_URL
```
