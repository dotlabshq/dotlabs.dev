# AGENTS.md — dotlabs.dev

Bu depo dotlabs'ın tanıtım sitesidir (`https://dotlabs.dev`). Crux şirketi
`dotlabs`, ekip `software`. Şirket kuralları `../../company/AGENTS.md`.

## Ne var, ne yok

- `site/` yayınlanan şey. Şu an tek sayfa, inline stil; marka kitinin
  `website/index.html` dosyasından başladı.
- `site/assets/{tokens.css,fonts,logo}` **kopyadır**. Kaynağı
  `../../company/brands/dotlabs`. Burada düzenleme; `scripts/sync-brand.sh` çalıştır.
  Markada değişiklik gerekiyorsa `dotlabs/sales` ekibine talep aç
  (`../../company/.crux/requests/sales/`).
- Henüz build aracı yok. Tek sayfa kaldığı sürece gerekmez; büyürse Astro
  tercih edilir (statik çıktı, tokens.css doğrudan kullanılabilir).

## Marka kuralları (özet; tamamı brand kit README'sinde)

- Slogan: **Build more. Glue less.** Açıklama: *The tools, services and
  infrastructure you need to build software. Use one, or let them work together.*
- Her zaman küçük harf *dotlabs*. Ekran başına tek Amber (`#FFB000`) CTA.
- Zemin Ink `#0B0B0B`; metin Bone/Mist; fontlar Space Grotesk + JetBrains Mono.
- Logo dosyaları `site/assets/logo/`; noktayı taşıma, halkayı kaldırma,
  gradient ekleme yok.

## İçerik kaynağı

- Ürün listesi ve durumları: `../../company/PROJECTS.md` (tek doğru kaynak).
  Sitede yalnızca canlı ya da satışa yakın ürünler öne çıkar: emailfs, flect,
  clave.one, foldbase, orbseal; açık kaynak araçlar "lab" bölümünde.
- Konumlandırma ve ürün sloganları: brand kit README "Konumlandırma ve mesaj".
  Oradaki clave.one/strine satırları taslaktır; PROJECTS.md ile çelişirse
  PROJECTS.md kazanır ve sales'e talep açılır.
- İş planı bağlamı: `../../company/PLAN.md` (self-serve, $9–20/ay, ajan
  geliştiren kişiler). Site bu kitleye konuşur.

## Yayın

- Hedef: flect üzerinde statik sayfa. `flect-example-page` örneği Markdown +
  `docs` şablonu kullanıyor; düz HTML için broker'ın statik şablon desteğini
  kontrol et, yoksa `software` olarak flect'e özellik talebi aç.
- DNS: `dotlabs.dev` şu an Vercel'de duraklatılmış deployment'a bakıyor.
  Taşıma `infra` ekibine talep (`../../company/.crux/requests/infra/`).
- Sırlar ve analitik anahtarları depoya girmez.

## Bitirme kontrolü

1. `site/` tarayıcıda hatasız açılıyor; `python3 -m http.server` ile kontrol.
2. Linkler PROJECTS.md ile tutarlı; ölü GitHub linki yok.
3. Commit mesajı kararı anlatır; şirket attribution kuralı uygulanır.
4. Marka değişikliği gerektiyse sales'e talep açıldı; infra işi gerektiyse infra'ya.
