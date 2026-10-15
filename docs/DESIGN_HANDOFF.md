# Designstand und Übergabe

Historischer Übergabestand vor der Veröffentlichung. PR #1 ist inzwischen gemerged; Lebenslauf, Domain und Survival-Verlinkung wurden anschließend aktualisiert. Branch-, Worktree-, Port- und Prüfstandsangaben unten beschreiben den damaligen Stand. Aktuelle Aufgaben und erledigte Nacharbeiten stehen in [TODO.md](../TODO.md).

## Sicherung und Branches

- `design/alternatives`: vollständiger Vergleichsstand mit dauerhaft verständlichen Namen; `DESIGN_VARIANTS.md` erklärt aktuelle und historische Varianten.
- `feature/design-review`: vorheriger vollständiger Arbeitsstand (`ea3b02b`), unverändert erhalten.
- `feature/design-comparisons`: frühere Sicherung; nicht gelöscht.
- `feature/semicircle-layout`: bereinigte Halbkreisfassung, aufgebaut auf dem aktuellen lokalen `master`. Keine Experimente in diesen Branch zusammenführen.
- `master` und `origin/master` sind durch die Bereinigung nicht verändert worden. Lokaler Master war bereits drei Commits vor origin/master.

## Bereinigung

Sieben aktuelle Seiten verwenden normale URLs (`index.html` plus sechs Projekte). Vorschaupräfixe, URL-Optionsscript, Auswahloberfläche, Inline-Hintergrundstyles und Variantenklassen wurden nicht übernommen. Das gewählte Layout ist in `assets/css/portfolio.css` konsolidiert; `main.css` enthält wieder nur die Templatebasis und die bestehende kleine Skills-Hilfsregel. Sidebar-Padding ist explizit 1em bei festen 30 % Breite: dieselbe Darstellung wie zuvor mit `sidebar=30`, ohne Parameterabhängigkeit.

Die aktuellen Seiten laden nur `assets/js/portfolio.js`: es verschiebt wie bisher den Footer beim 980px-Breakpoint und beendet den Ladezustand. Keine Parallax-, Lightbox- oder dynamische Vergleichslogik. Alte Template-Dateien bleiben wegen der bestehenden Legacy-Seiten erhalten. Die HTML5-UP-Lizenz und sichtbare Designcredits bleiben erhalten.

Nur tatsächlich verwendete neue Bilddateien und Brownian-Originalquelle übernommen. Foto-/Rechteckvarianten, alternative Tabellenbilder, SVG-Rahmen und Vergleichsgeneratoren bleiben im archivierten Vergleichsbranch. Quellen in `IMAGE_SOURCES.md`; offene Aufgaben in `../TODO.md`.

## Lokaler Vergleich

Die bisherige Vorschau auf Port 8001 bleibt beim Vergleichsbranch. Die bereinigte Fassung liegt in einem separaten Worktree, unter `/mnt/shared/Weiteres/alexgreif-hybrid-ready`, und wird auf Port 8002 bereitgestellt. Port 8002 ist aktuell nur am Rechner unter 127.0.0.1 erreichbar; ein echter Handytest braucht eine bewusst freigegebene WLAN-Vorschau. In der fertigen Website sind keine Sidebar-Parameter nötig.

## Pull Request

[PR #1](https://github.com/alexgreif/alexgreif.github.io/pull/1) wurde als Entwurf von `feature/semicircle-layout` nach `master` angelegt. `design/alternatives` und der ausgewählte Branch sind separat auf GitHub gesichert. Der PR enthält die drei bereits lokalen Inhaltscommits sowie die bereinigte gewählte Gestaltung. Der GitHub-Master wurde dabei nicht verändert.

Nächster Schritt: finale PR-Sichtprüfung, dann als bereit markieren und nach Freigabe zusammenführen. Anschließend die veröffentlichte Website prüfen. Lebenslauf und Survival-Repository bleiben ausdrücklich spätere Updates.

## Prüfstand

Statischer Check: sieben Seiten, 75 lokale Verweise, Reihenfolge, Rücklinks, Download-/Tab-Verhalten und lokale SVGs. JavaScript-Syntax geprüft. Firefox-Sichtprüfung der bereinigten Fassung bei 1866×947 und 390×1500 für die Bachelorarbeit, 1280×720 für Startseite/Studienartikel/Survival/Brownian und 390×1500 für Startseite/Anguilla/Cyclistic/Studienartikel. Screenshots `/tmp/ready-*.png` und `/tmp/hybrid-ready-*.png`. Vor Veröffentlichung bleibt ein echter Gerätecheck sinnvoll. HTML-Dateien behalten das bisherige CRLF-Format; der dokumentierte Whitespace-Check berücksichtigt dies.

Übersicht nach abschließender Entscheidung auf 1200px und damit höchstens drei Spalten begrenzt; links am bisherigen Inhaltsrand. Reihenfolge bleibt kuratiert. Firefox-Prüfung bei 3840×1400 (drei Spalten, zwei Reihen) und 390×1500 (eine Spalte); Screenshots `/tmp/overview-capped-wide.png` und `/tmp/overview-capped-mobile.png`. Lebenslauf-Update und Survival-Repository sind ausdrücklich spätere Updates und keine PR-Blocker.

## Dauerhafte Designnamen

Im Branch `design/alternatives` beschreibt `DESIGN_VARIANTS.md` alle aktuellen und historischen Varianten. Aktuelle Namen: `subtle`, `photos`, `semicircle`, `rectangle`. Das frühere `hybrid` heißt nun `semicircle`; alte Vorschau-URLs leiten weiter. Gemeinsame Bildausschnitt-Klassen heißen dort `review-inset-image`/`inset-image`, damit Rechteckbilder nicht als Halbkreise benannt sind. Die Produktionsfassung bleibt mit `project-image` unabhängig vom Vergleichssystem.

Nach erneuter JavaScript-Prüfung liegt die Touch-Darstellung der Vorschaubilder direkt in CSS (`pointer: coarse`). `portfolio.js` übernimmt nur Footer-Platzierung und das Beenden des initialen Ladezustands. Die PR-Beschreibung fasst Ergebnis und Prüfungen zusammen; einzelne Spalten-/Textbreitenwerte bleiben in Code und Commits nachvollziehbar.
