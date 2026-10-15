# Portfolio: offene Aufgaben

Stand: 15. Oktober 2026. Diese Liste ist kein Auftrag, alle Punkte sofort umzusetzen.

## Offen

- [ ] **Branch-Bereinigung:** Lokale und gegebenenfalls entfernte Branches auf zusammengeführte oder überholte Arbeit prüfen. `design/alternatives` und noch nicht übernommene Änderungen erhalten; zusätzliche Worktrees berücksichtigen.
- [ ] **Repository-Struktur diskutieren:** Prüfen, ob Projektseiten und Projektmaterialien in gemeinsamen Projektordnern übersichtlicher wären. Auch Root-Dateien, Dokumentation und alte Template-Bestandteile betrachten. Erst nach einer Entscheidung umstellen; bestehende URLs und relative Links berücksichtigen.
- [ ] **Bildquellen vervollständigen:** Für bestehende Unsplash-Fußball-, Fahrrad- und Lupenbilder genaue Fotografen-/Bildlinks recherchieren. Dokumentierte Quellen und Lizenzbedingungen stehen in `docs/IMAGE_SOURCES.md`. Brownian-Credit mit Bearbeitungshinweis und CC BY-SA-Link erhalten.
- [ ] **LinkedIn aktualisieren:** Profil und Angaben zu Projekten, Erfahrung und Fähigkeiten durchsehen und aktualisieren.
- [ ] **Abschließende Inhaltsprüfung:** Projekttexte und methodische Angaben wurden gemeinsam überarbeitet. Eine vollständige abschließende Prüfung aller eigenen Beiträge, Jahreszahlen, Skilllisten, Veröffentlichungsreferenzen und Materialien ist noch nicht dokumentiert.
- [ ] **Abschließender Gerätecheck:** Desktop- und schmale Browseransichten wurden geprüft. Einen vollständigen Check am tatsächlichen Handy und mit Tastatur einschließlich aller Downloads und der Projekt-Navigation noch bestätigen.

## Erledigt

- [x] **Website veröffentlichen:** Halbkreisfassung aus [PR #1](https://github.com/alexgreif/alexgreif.github.io/pull/1) zusammengeführt und veröffentlicht. Die späteren Korrekturen sind ebenfalls veröffentlicht. `design/alternatives` bleibt separat erhalten.
- [x] **Eigene Domain einrichten:** GitHub Pages ist unter [portfolio.alexgreif.de](https://portfolio.alexgreif.de/) erreichbar. DNS, HTTPS, Weiterleitungen und Darstellung geprüft.
- [x] **Lebenslauf aktualisieren:** Aktuelle PDF als `Alexander_Greif_CV.pdf` eingebunden; Download nach Veröffentlichung vom Nutzer geprüft. Die beiden bisherigen Lebenslaufdateien wurden entfernt.
- [x] **Cyclistic und Anguilla Search prüfen und aufräumen:** README, Materialien, Abhängigkeiten und Ausführung geprüft und überarbeitet; PRs gemerged. Anguilla-Testumgebung zusätzlich lokal und privat gesichert.
- [x] **Survival-Repository anlegen und verlinken:** Report, R-Skript und Datensatz liegen mit README und geprüfter Paketumgebung in [survival-analysis](https://github.com/alexgreif/survival-analysis). Die Website verlinkt das Repository und behält den direkten PDF-Link.
- [x] **Survival-README nachprüfen:** Projektbeschreibung abgestimmt, Report in die Dateiliste integriert und Datensatzbeschreibung gestrafft; [PR #2](https://github.com/alexgreif/survival-analysis/pull/2) gemerged.
- [x] **Brownian-Motion-Materialien festlegen:** Paper und Präsentation genügen. Für den kleinen Abbildungscode wird vorerst kein eigenes Repository angelegt.

## Später, kein unmittelbarer Handlungsbedarf

- [ ] Genaues Brownian-Motiv und Sportfoto bei Bedarf erneut vergleichen.
- [ ] Bei weiteren Veröffentlichungen eine eigene Veröffentlichungsseite neu bewerten.
- [ ] Ältere Template-/Hilfsseiten (`hilfe.html`, `thesis/index.html`) und deren separate JavaScript-/Sass-Dateien nach Klärung ihrer Nutzung entfernen oder umleiten; bestehende URLs nicht versehentlich brechen.
- [ ] Unbenutzte Medien nach vollständiger Referenzprüfung entfernen; historische Unterlagen und Berichtsdateien nicht pauschal löschen. Aktuell sind keine `.DS_Store`-Dateien in Git erfasst.
- [ ] Falls die Hochschul-Registry nicht mehr verfügbar ist, eine unabhängige öffentliche Anguilla-Testumgebung erwägen. Die bestehenden Intranet-Images sind bereits gesichert.

## Bewusst festgelegt

- Übersicht mit höchstens drei Spalten und maximal 1200px Breite; links am Inhaltsrand. Projekte bewusst kuratiert statt nach Jahreszahl sortiert, mit Bachelorarbeit und veröffentlichter Studie zuerst.

- Halbkreislayout mit 30 % Sidebar; keine URL-Schalter für Breite, Bilder oder Layout in der Produktionsfassung.
- Links innerhalb der Website im gleichen Tab; Materialien zum Ansehen und externe Quellen in neuen Tabs; herunterladbare Dateien mit `download`.
- Die E-Mail-Adresse bleibt über den Mail-Link und Lebenslauf erreichbar; keine zusätzliche Adresse oder Kopierfunktion in der Oberfläche.
- Copyright `2022-2026`; bei einer späteren inhaltlichen Überarbeitung die Jahresspanne erneut prüfen.
- Desktop-Navigation bei kurzen Projekten unten; im schmalen Layout folgt sie dem Inhalt. Keine JavaScript-Berechnung ihrer Position.
