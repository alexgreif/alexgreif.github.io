# Designstand und Übergabe

## Sicherung und Branches

- `archive/design-review-2026-10-12` und `feature/design-review`: letzter vollständiger Vergleichsstand (`ea3b02b`). Alle vier Varianten und die früheren Experimente bleiben dort erhalten.
- `feature/design-comparisons`: frühere Sicherung; nicht gelöscht.
- `feature/hybrid-portfolio`: bereinigte Halbkreisfassung, aufgebaut auf dem aktuellen lokalen `master`. Keine Experimente in diesen Branch zusammenführen.
- `master` und `origin/master` sind durch die Bereinigung nicht verändert worden. Lokaler Master war bereits drei Commits vor origin/master.

## Bereinigung

Sieben aktuelle Seiten verwenden normale URLs (`index.html` plus sechs Projekte). Vorschaupräfixe, URL-Optionsscript, Auswahloberfläche, Inline-Hintergrundstyles und Variantenklassen wurden nicht übernommen. Das gewählte Layout ist in `assets/css/portfolio.css` konsolidiert; `main.css` enthält wieder nur die Templatebasis und die bestehende kleine Skills-Hilfsregel. Sidebar-Padding ist explizit 1em bei festen 30 % Breite: dieselbe Darstellung wie zuvor mit `sidebar=30`, ohne Parameterabhängigkeit.

Die aktuellen Seiten laden nur `assets/js/portfolio.js`: es verschiebt wie bisher den Footer beim 980px-Breakpoint und beendet den Ladezustand. Keine Parallax-, Lightbox- oder dynamische Vergleichslogik. Alte Template-Dateien bleiben wegen der bestehenden Legacy-Seiten erhalten. Die HTML5-UP-Lizenz und sichtbare Designcredits bleiben erhalten.

Nur tatsächlich verwendete neue Bilddateien und Brownian-Originalquelle übernommen. Foto-/Rechteckvarianten, alternative Tabellenbilder, SVG-Rahmen und Vergleichsgeneratoren bleiben im archivierten Vergleichsbranch. Quellen in `IMAGE_SOURCES.md`; offene Aufgaben in `../TODO.md`.

## Lokaler Vergleich

Die bisherige Vorschau auf Port 8001 bleibt beim Vergleichsbranch. Die bereinigte Fassung liegt in einem separaten Worktree, unter `/mnt/shared/Weiteres/alexgreif-hybrid-ready`, und wird auf Port 8002 bereitgestellt. Port 8002 muss für einen Handytest gegebenenfalls im lokalen WLAN erreichbar sein. In der fertigen Website sind keine Sidebar-Parameter nötig.

## Empfohlener nächster Git-Schritt

Nach Sichtprüfung und Entscheidung zu den offenen Veröffentlichungspunkten einen Pull Request von `feature/hybrid-portfolio` nach `master` vorbereiten. Vorher origin/master aktualisieren und die bereits lokalen Inhaltscommits im Gesamtdiff berücksichtigen. Der Archivbranch kann später separat remote gesichert werden. Derzeit nichts gemergt oder gepusht.

## Prüfstand

Statischer Check: sieben Seiten, 75 lokale Verweise, Reihenfolge, Rücklinks, Download-/Tab-Verhalten und lokale SVGs. JavaScript-Syntax geprüft. Firefox-Sichtprüfung der bereinigten Fassung bei 1866×947 und 390×1500 für die Bachelorarbeit, 1280×720 für Startseite/Studienartikel/Survival/Brownian und 390×1500 für Startseite/Anguilla/Cyclistic/Studienartikel. Screenshots `/tmp/ready-*.png` und `/tmp/hybrid-ready-*.png`. Vor Veröffentlichung bleibt ein echter Gerätecheck sinnvoll. HTML-Dateien behalten das bisherige CRLF-Format; der dokumentierte Whitespace-Check berücksichtigt dies.
