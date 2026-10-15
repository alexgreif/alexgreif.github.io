# Portfolio website

Static portfolio with an overview and six project pages. The selected design uses a 30% sidebar, semicircle project images on desktop and an image segment at the edge of the narrow header.

## Local preview

Run from the repository root:

```sh
python3 -m http.server 8001 --bind 127.0.0.1
```

Open `http://localhost:8001/`. To test from a phone on the same trusted WLAN, bind to `0.0.0.0` instead and use the computer's WLAN address. No URL layout parameters are needed.

## Editing and checks

- Page content: `index.html` and the six project HTML files.
- Selected layout: `assets/css/portfolio.css`.
- HTML5 UP base styles: `assets/css/main.css`. Styles are edited directly; no Sass build is required.
- Images: `images/<project>/overview.*` and `sidebar.*`; source originals in the project’s `source/` directory. The portrait stays in `images/`, template imagery in `images/template/`.
- Current page behavior: `assets/js/portfolio.js` (footer placement and initial loading state).

```sh
python3 scripts/check_portfolio.py
node --check assets/js/portfolio.js
git -c core.whitespace=blank-at-eol,blank-at-eof,space-before-tab,cr-at-eol diff --check
```

Also review the actual browser layout at phone, tablet and desktop widths. The reference checker does not inspect remote repository contents or replace a visual/device check.

## Design history and outstanding work

- [Open tasks and completed follow-ups](TODO.md).
- [Design handoff and archived branches](docs/DESIGN_HANDOFF.md).
- [Image sources and licenses](docs/IMAGE_SOURCES.md).

The full comparison site is preserved on `design/alternatives`. The `master` branch contains the published version. The live site is available at [portfolio.alexgreif.de](https://portfolio.alexgreif.de/).

Template: Strata by HTML5 UP; original license and README remain in `LICENSE.txt` and `README.txt`. Image licenses and attribution are documented separately.
