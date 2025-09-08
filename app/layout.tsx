export const metadata = {
  title: "Nebula Casino",
  description: "Crypto casino MVP (Novomatic launcher front)",
};
export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="en">
      <head />
      <body>{children}</body>
    </html>
  );
}
