# Portfolio: offene Aufgaben

Stand: 23. Oktober 2026. Diese Liste ist kein Auftrag, alle Punkte sofort umzusetzen.

## Offen

- [ ] **Website-Aktualisierung veröffentlichen:** Arbeitsbranch `update/portfolio-refresh` mit neuem Porträt, angepasstem PDF-Download, Artikel-DOI und dokumentierter Branch-/PR-Arbeitsweise prüfen und nach Freigabe über einen Pull Request nach `master` zusammenführen. Noch nicht veröffentlicht.

- [ ] **LinkedIn aktualisieren:** Profil und Angaben zu Projekten, Erfahrung und Fähigkeiten durchsehen und aktualisieren.

## Im aktuellen Arbeitsbranch umgesetzt

- [x] **Porträt und CV-PDF:** Ausgewähltes neues Foto lokal übernommen; übriger CV-Textstand zunächst erhalten.
- [x] **Artikel-DOI:** Auf der Studienzufriedenheitsseite den bisherigen Heftlink durch den vollständigen Artikel-DOI am Ende des Eintrags ersetzt; im angebotenen CV-PDF ausschließlich den DOI ergänzt. Nur die DOI-URL ist innerhalb des Publikationseintrags verlinkt. Artikelquelle: https://openjournals.fachportal-paedagogik.de/bzh/article/view/192, DOI: https://doi.org/10.58069/bzh.2026.2.192; am 23. Oktober 2026 geprüft.
- [x] **Arbeitsweise dokumentiert:** Branches und Pull Requests sind in `AGENTS.md` verbindlich beschrieben; die README verweist darauf.

## Erledigt

- [x] **Abschließende Inhalts- und Bedienungsprüfung:** Nutzer hat am 15. Oktober 2026 bestätigt, dass Inhalt und Bedienung ausreichend geprüft sind, einschließlich Prüfung am tatsächlichen Handy.

- [x] **Bildquellen vervollständigen:** Alle fünf zuvor offenen Unsplash-Fotos sind mit Bildlinks und Fotografen in `docs/IMAGE_SOURCES.md` zugeordnet. Brownian-Credit mit Bearbeitungshinweis und CC BY-SA-Link bleibt erhalten.

- [x] **Branch-Bereinigung:** Übernommene und separat gesicherte Arbeitsbranches sowie zusätzliche Worktrees entfernt. `master` und `design/alternatives` bleiben erhalten.
- [x] **Website-Cleanup:** Alte Hilfsseite entfernt, alte Thesis-Seite durch Weiterleitung ersetzt, ungenutzte Template-Skripte, Sass-Quellen und Medien sowie doppelte Survival-Code-/Datendateien entfernt.

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
- [ ] **Repository-Struktur erneut bewerten:** Bei weiteren Projekten einen gemeinsamen Projektordner mit Seiten und Materialien erwägen. Die derzeit sechs Projektseiten bleiben im Root; eine Umstrukturierung erfolgt separat vom Cleanup. Geänderte URLs sind dabei kein Hinderungsgrund.
- [ ] Falls die Hochschul-Registry nicht mehr verfügbar ist, eine unabhängige öffentliche Anguilla-Testumgebung erwägen. Die bestehenden Intranet-Images sind bereits gesichert.

## Bewusst festgelegt

- Übersicht mit höchstens drei Spalten und maximal 1200px Breite; links am Inhaltsrand. Projekte bewusst kuratiert statt nach Jahreszahl sortiert, mit Bachelorarbeit und veröffentlichter Studie zuerst.

- Halbkreislayout mit 30 % Sidebar; keine URL-Schalter für Breite, Bilder oder Layout in der Produktionsfassung.
- Links innerhalb der Website im gleichen Tab; Materialien zum Ansehen und externe Quellen in neuen Tabs; herunterladbare Dateien mit `download`.
- Die E-Mail-Adresse bleibt über den Mail-Link und Lebenslauf erreichbar; keine zusätzliche Adresse oder Kopierfunktion in der Oberfläche.
- Copyright `2022-2026`; bei einer späteren inhaltlichen Überarbeitung die Jahresspanne erneut prüfen.
- Desktop-Navigation bei kurzen Projekten unten; im schmalen Layout folgt sie dem Inhalt. Keine JavaScript-Berechnung ihrer Position.
