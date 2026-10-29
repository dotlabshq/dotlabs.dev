# dotlabs.dev

dotlabs'ın web sitesi. Marka kiti `company/brands/dotlabs` (sahibi `dotlabs/sales`);
bu depo onu tüketir, değiştirmez.

```
site/            yayınlanan statik site (index.html + assets/)
site/assets/     tokens.css, fonts/, logo/ → scripts/sync-brand.sh ile marka kitinden gelir
scripts/         sync-brand.sh
```

Lokal: `cd site && python3 -m http.server 8000`
Marka güncellenince: `scripts/sync-brand.sh`

Başlangıç noktası marka kitindeki `website/index.html` (inline stil, tasarım
tuvalinden). Bir framework'e taşınırsa `tokens.css` / Tailwind preset kullanılır.
Yayın: flect üzerinde statik sayfa (bkz. AGENTS.md).
