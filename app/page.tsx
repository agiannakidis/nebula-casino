export default function Page() {
  return (
    <div className="min-h-screen flex items-center justify-center">
      <div className="max-w-xl p-6 rounded-2xl bg-gray-900 border border-gray-700">
        <h1 className="text-2xl font-bold">Nebula Casino (Docker)</h1>
        <p className="opacity-80 mt-2">
          Docker scaffold is ready. Replace <code>app/page.tsx</code> with your full front-end code.
        </p>
        <p className="text-sm mt-3 opacity-60">
          JSON catalog loaded from <code>/public/novomatic_games_with_icons.json</code>.
        </p>
      </div>
    </div>
  );
}
