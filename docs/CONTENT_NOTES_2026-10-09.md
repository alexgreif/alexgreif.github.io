# Historischer Inhaltsentwurf

Dieser Entwurf ist archiviert und beschreibt nicht die aktuelle Website. Maßgeblich sind die gewählten HTML-Seiten, TODO.md und DESIGN_HANDOFF.md.

# Inhaltsentwurf für die Portfolio-Website

Stand: 9. Oktober 2026. Arbeitsdokument; die Inhalte sind noch nicht ausformuliert oder zur Veröffentlichung freigegeben.

## Ziel und Rahmen

Die Website vertieft die Informationen aus Bewerbungen, Lebenslauf und LinkedIn. Im Mittelpunkt stehen nachvollziehbar dargestellte Projekte.

- Eine gemeinsame Website für Research- und weitere datenbezogene Stellen.
- Vorerst keine Einleitung und kein Profiltext. Die bisherige biographische Einleitung entfällt bei der Website-Überarbeitung.
- Keine separate ausführliche Kompetenzübersicht. Methoden und Werkzeuge werden bei den jeweiligen Projekten genannt; der Lebenslauf ergänzt den Gesamtüberblick.
- Inhalte zuerst planen, Layout anschließend anhand des Umfangs und der Gewichtung entscheiden.
- Änderungen werden schrittweise besprochen und erst nach Zustimmung umgesetzt.

## 1. Einleitung — vorerst weggelassen

Die Website wird zunächst ohne Einleitung oder Profiltext geplant. Die bisherigen Formulierungsvorschläge wurden nicht übernommen. Ob später ein kurzer Text sinnvoll ist, bleibt offen; seine Ausarbeitung ist derzeit kein anstehender Arbeitsschritt.

## 2. Ausgewählte Projekte

Zunächst wird die Website mit den beiden vorhandenen Projekten Bachelorarbeit und Cyclistic überarbeitet. Die vertiefte Prüfung der Projekte und die Ergänzung neuer Projekte folgen zuletzt.

| Projekt | Stand der Planung |
| --- | --- |
| Bachelorarbeit | Bleibt zunächst auf der Website; detaillierte Überarbeitung später. |
| Cyclistic | Bleibt zunächst auf der Website; detaillierte Überarbeitung später. |
| AnguillaSearch | Vorgesehene Ergänzung; Prüfung und Darstellung im letzten Arbeitsschritt. |
| Überlebenszeitanalyse | Vorgesehene Ergänzung; Prüfung und Darstellung im letzten Arbeitsschritt. |

Für jedes ausgewählte Projekt klären wir:
- Fragestellung und Kontext.
- Eigener Beitrag.
- Methoden und Werkzeuge.
- Ergebnis und gegebenenfalls Grenzen der Aussagekraft.
- Verfügbare Belege, Berichte, Code oder andere weiterführende Links.

## 3. Publikation

Bestätigt: kompakter bibliografischer Eintrag mit Titel, Autoren, Erscheinungsjahr und Link; keine zusätzliche Projektbeschreibung.

### Geplanter Website-Inhalt

**Publication**

Magner, A., Greif, A., & Kohake, K. (2026). Studienzufriedenheit im Sportlehramtsstudium: Eine Mixed-Methods-Studie unter besonderer Berücksichtigung des Geschlechts. *Beiträge zur Hochschulforschung, 48*(2), 110–139.

[Full issue (article on pp. 110–139)](https://doi.org/10.58069/bzh.2026.2)

### Redaktionelle Hinweise

- Der Titel bleibt im deutschen Original.
- Der Link führt zur Gesamtausgabe; der DOI wird nicht als Artikel-DOI dargestellt.
- Bibliografische Angaben aus der geprüften Lebenslaufbasis übernommen. Der DOI der Gesamtausgabe ist im lokalen Nachweis dokumentiert; der Onlinezugriff ließ sich beim Ergänzen des Entwurfs nicht erneut bestätigen.
- Position innerhalb des endgültigen Layouts noch festzulegen.

## 4. Kontakt und Lebenslauf

Kontakt und Lebenslauf sollen leicht auffindbar sein.

### Geplanter Website-Inhalt

**Contact**

- [alex@alexgreif.de](mailto:alex@alexgreif.de)
- [LinkedIn](https://www.linkedin.com/in/alexgreif/)
- [GitHub](https://github.com/alexgreif)

Bestätigt: E-Mail, LinkedIn und GitHub aufnehmen; keine Telefonnummer anzeigen.

### Lebenslauf — noch offen

- Ein allgemeiner Lebenslauf oder zwei unterschiedlich ausgerichtete Varianten.
- Welche fertige und geprüfte Lebenslaufversion öffentlich angeboten wird.

Die Lebenslaufentscheidung wird zunächst zurückgestellt. Die vorhandenen Website-Lebensläufe sind veraltet.

## Spätere Entscheidungen zur Gestaltung

Erst nach der Inhaltsplanung:
- Seitenaufteilung und Navigation.
- Beibehaltung, Verkleinerung oder Entfernung der großen linken Sidebar.
- Visuelle Gewichtung von Projekten und Kontakt.
- Gestaltungsidee des Nutzers: Kontakt und Lebenslauf-Links in der festen linken Sidebar, übrige Inhalte rechts. Noch keine endgültige Layoutentscheidung.
- Sprache der endgültigen Inhalte; die bestehende Website ist englischsprachig.

## Nächster gemeinsamer Schritt

Layout abstimmen und umsetzen; die Auswahl der Lebenslaufvariante bleibt zunächst zurückgestellt. Die vertiefte Projektarbeit und zusätzliche Projekte kommen zuletzt.

## Bildauswahl für Anguilla Search

- Vorerst auf der Hauptseite: blaue Lupe von Markus Winkler ([Unsplash](https://unsplash.com/photos/magnifying-glass-on-white-table-afW1hht0NSs)); Datei `images/thumbs/anguilla-search.jpg`.
- Engere Alternative: eigener Webseiten-Graph, Datei `images/previews/anguilla-original-graph.png`; Vergleichsseite `preview-home-graph.html`.
- Sobald das endgültige Vorschaubild für Survival Analysis feststeht, Lupe und eigenen Graphen erneut im Gesamtbild vergleichen.
- Die Suchleisten-Variante wird vorerst nicht weiterverfolgt.

## Vorschaubild für Survival Analysis

- Farbige Kaplan–Meier-Kurven aus den unveränderten 30 simulierten Beobachtungen des Projekts, ohne Überschrift, Achsentitel und Legende; dezentes Raster und wenige Skalenwerte: links 0 %, 50 %, 100 %, unten 0, 7, 14.
- Blau: Interventionsgruppe; Orange, gestrichelt: Kontrollgruppe. Zensierungsmarkierungen bleiben erhalten. Kräftigere Kurven mit halbtransparenten punktweisen 80%-Konfidenzbändern (Log-Log-Methode); Konfidenzniveau bewusst für die illustrative Vorschau gewählt.
- Hauptseitenbild: `images/thumbs/survival-analysis-colour.png`; reproduzierbare Darstellung und Datenkopie in `images/source/survival-thumbnail.R` und `survival-thumbnail-data.csv`.
- Gleicher Zuschnitt, Textur und Hover-Effekt wie die anderen Vorschaubilder. Die ursprüngliche Berichtsabbildung bleibt verfügbar.
- Das Gesamtbild anschließend erneut mit Lupe beziehungsweise eigenem Anguilla-Graphen vergleichen.

## Vergleichsvarianten für Survival Analysis

- Übersicht: `preview-survival.html`; zusätzlich zehn `preview-home-survival-*.html` für die Darstellung im Portfolio. Die Hauptseite bleibt unverändert.
- Fünf Stufen: nur Kurven/Raster/Bänder; zusätzlich Zahlen; Zahlen und Achsentitel; nur Legende; vollständige Darstellung.
- Jeweils unveränderte Projektdaten (n = 30) und neue illustrative Simulation (n = 400, 200 pro Gruppe, Seed 4214242); Projektdaten mit punktweisen 80%-, zusätzliche Simulation mit 95%-Log-Log-Konfidenzbändern. Beide Kurven werden durchgezogen dargestellt.
- Die zusätzliche Simulation dient ausschließlich der Illustration und stellt kein Projektergebnis dar. Ihre Zeiteinheit ist Tage; die Zeiteinheit der Projektdaten ist laut Bericht nicht dokumentiert.
- Generierung: `images/source/survival-variants.R`; zusätzliche simulierte Daten: `images/source/survival-illustrative-data.csv`.

- Für den visuellen Vergleich die zehn einzelnen `preview-home-survival-*.html` verwenden; jede zeigt das Bild an seiner tatsächlichen Position auf der Hauptseite.

### Überarbeitete vollständige Simulationsvorschau

- `preview-home-survival-simulated-full.html`: größere Schrift für die Projektkarte, X-Achse „Time (days)“ mit Zweierschritten, Y-Achse mit 20-Prozent-Schritten, feinere Kurven und dezentes Raster; weiterhin Legende und 95%-Konfidenzbänder.
- Separate Generierung: `images/source/survival-thumbnail-polished.R` verwendet die vorhandene zusätzliche Simulation unverändert. Nach einem erneuten Lauf von `survival-variants.R` dieses Skript ausführen, um die überarbeitete Variante wiederherzustellen.
- Die Hauptseite und die übrigen neun Vergleichsvarianten sind unverändert.

- Vollständige Vorschauen jetzt in gleicher Typografie für beide Datensätze: Achsentitel haben dieselbe normale Sans-Serif-Schrift, Farbe und Größe wie die Zahlen. Die zusätzliche Simulation verwendet illustrativ „Time (years)“; die Originaldaten weiterhin „Time (unspecified unit)“. Projektdaten behalten 80%-, zusätzliche Simulation 95%-Konfidenzbänder. `survival-thumbnail-polished.R` erzeugt beide vollständigen Varianten.

## Aktuelle Bildentscheidung für Survival Analysis

- Vorerst auf der Hauptseite: die überarbeitete vollständige Darstellung der zusätzlichen Simulation mit 400 Beobachtungen, „Time (years)“, Legende und 95%-Konfidenzbändern.
- Eingesetzte Datei: `images/thumbs/survival-analysis-illustration.png`, übernommen aus `images/previews/survival-simulated-full.png`. Die Bildbeschreibung kennzeichnet die zusätzliche illustrative Simulation.
- Die Darstellung ist kein Ergebnis aus den ursprünglichen Projektdaten. Für die Detailseite ist die Abbildung mit den tatsächlichen Projektdaten vorgemerkt; dort die unbekannte Zeiteinheit erläutern.
- Reproduzierbare Darstellung: `images/source/survival-thumbnail-polished.R`; nach Regenerierung die ausgewählte Simulationsabbildung erneut in die Hauptseiten-Bilddatei kopieren.

## Brownsche Bewegung als fünftes Projekt

- Bestätigt aufgenommen: „Brownian Motion and Markov Properties“, Kontext „Seminar project · Applied Probability“.
- Kurztext: „Exploring Markov properties, stopping times and the reflection principle through mathematical proofs and illustrations.“
- Werkzeug R vom Nutzer bestätigt; literaturgestützte mathematische Seminararbeit, keine eigenständige Forschungsveröffentlichung.
- Vorläufiges Vorschaubild: unveränderte Abbildung 2.1 aus `Topic_8_Markov_Paper.pdf`, fünf simulierte Brownsche Pfade; `images/thumbs/brownian-motion-preview.png`.
- `brownian-motion.html` zunächst als leere Projektseite mit Titel und Home-Link angelegt; inhaltliche Ausarbeitung später.
- Vorläufige Reihenfolge: Bachelorarbeit, Anguilla Search, Survival Analysis, Brownian Motion, Chicago Bike Share Analysis. Chicago wie besprochen zuletzt; Reihenfolge der übrigen Projekte weiter offen.

## Formale Vereinheitlichung der Projektkarten

- Zunächst Titel und Entstehungskontext abstimmen; bestehende Kurzbeschreibungen erst zuletzt überarbeiten.
- Bachelorarbeit bestätigt: „Player Readiness in Football“; Zusatzzeile „Bachelor’s thesis · Sport and Exercise Science“, im selben Format wie der Seminar-Kontext bei Brownian Motion. Bestehender Beschreibungstext unverändert.

- Alle fünf Hauptseitenkarten vorläufig vereinheitlicht: Titel, kursiv gesetzte Kontextzeile, bestehende Kurzbeschreibung.
- Anguilla Search: „Course project · Software Development“.
- Survival Analysis: „Course project · Mathematical Statistics“.
- Chicago Bike Share Analysis: „Capstone project · Google Data Analytics“.
- Die bestehenden Titel von Anguilla, Survival Analysis, Brownian Motion und Chicago bleiben erhalten; Bachelorarbeit wie bereits bestätigt „Player Readiness in Football“. Alle Kurzbeschreibungen und die Reihenfolge bleiben unverändert.

- Aktualisierter, bestätigter Titel der Bachelorarbeit: „Modelling Training Status in Football“. Kontextzeile verwendet den tatsächlichen Studiengang: „Bachelor’s thesis · Human Movement in Sports and Exercise“. Die Kurzbeschreibung bleibt bis zur abschließenden Textüberarbeitung unverändert.

## Reihenfolge und Datierung der Projektkarten

- Bestätigt: bewusst gewählte aktuelle Reihenfolge beibehalten, keine strikt chronologische Sortierung.
- Jahresangaben in den vorhandenen Kontextzeilen ergänzen: Bachelorarbeit 2021; Anguilla Search 2024/25 (Wintersemester); Survival Analysis 2025; Brownian Motion 2026; Chicago Bike Share Analysis 2022.
- Keine Monatsangaben, da diese nicht für alle Projekte gesichert sind. Titel und Kurzbeschreibungen bleiben unverändert.

- Bestätigte Kurzbeschreibung für Survival Analysis: „Kaplan–Meier estimation and log-rank testing of right-censored survival data using R.“ Den bereitgestellten simulierten Datensatz auf der Detailseite erläutern.

- Bestätigte vereinheitlichte und gekürzte Bachelorarbeitsbeschreibung: „A multilevel analysis of GPS, heart rate and contextual match data to assess training status.“ Begriff „training status“ entspricht dem Titel; Fußballkontext bereits in der Überschrift.

- Bestätigte Kurzbeschreibung für Anguilla Search: „A Java search engine combining web crawling, TF-IDF text indexing and PageRank-based relevance ranking.“

- Anguilla Search: Auf Wunsch wieder die ursprüngliche, kürzere Kurzbeschreibung verwenden: „A Java search engine combining web crawling, text indexing and relevance ranking.“ TF-IDF und PageRank auf der Detailseite erläutern.

- Bestätigte Brownian-Motion-Kurzbeschreibung: „Exploring Markov properties and their consequences through mathematical proofs and illustrations.“
- Anguilla Search im Portfolio auf 2025 datiert statt 2024/25. Leistungsübersicht: 10 ECTS bestanden im Wintersemester 2024/25, Prüfungsdatum leer. Die Dokumentation hat laut PDF-Metadaten den Erstellungszeitpunkt 06.01.2025; 2025 ist damit als Projektjahr gestützt, das genaue Datum der Kreditvergabe ist nicht belegt.

- Bestätigte Kurzbeschreibung für Chicago Bike Share Analysis: „Analysing bike-share usage patterns to inform marketing recommendations.“

- Bestätigte Hauptseiten-Navigation: dezente Sprunglinks „Projects · Publications“ oberhalb der Projektüberschrift, jeweils direkt zur entsprechenden Überschrift. Beide Abschnitte bleiben gemeinsam sichtbar auf derselben Seite.

- Bestätigte Abstände innerhalb der Hauptseiten-Projektkarten: Bildlink als Block mit 0,75 em Abstand zum Titel (bisher 1,5 em Bildabstand); Titel zur Kontextzeile 0,3 em (bisher 0,5 em); Kontext zur Beschreibung 0,35 em zusätzlich. Grid-Abstand zwischen Karten unverändert. CSS auf die Hauptseiten-Projektkarten begrenzt.

- Projektkartentext kompakter: zusätzlichen Abstand zwischen Kontext und Beschreibung entfernt; Titelabstand auf 0,15 em reduziert. Bild-Titel-Abstand bleibt 0,75 em.

- Feinjustierung der Projektkarten: Bild-Titel-Abstand 0,65 em; Kontext-Beschreibung-Abstand 0,12 em. Beschreibung dunkler (#707070), Kontext etwas zurückhaltender (#808080). Titelabstand unverändert 0,15 em.

- Erneute Feinjustierung: Bild-Titel-Abstand 0,5 em, Titel-Kontext-Abstand 0,05 em; Beschreibung #787878, Kontext #888888. Abstand zwischen Kontext und Beschreibung sowie zwischen Projektkarten unverändert.

- Bestätigter neuer Projekttitel: „Markov Properties of Brownian Motion“. Hauptseitenüberschrift, zugängliche Linkbezeichnung und Titel der Platzhalter-Projektseite entsprechend aktualisiert; Kurzbeschreibung unverändert.

- Projektbeschreibungen auf Wunsch minimal heller: #808080 statt #787878; Kontext bleibt #888888, Abstände unverändert.

- Kompakter Kopfbereich auf der Hauptseite bis 980 px: oben/unten 2 em Padding, Avatarabstand 0,65 em, Einleitungszeilenhöhe 1,55 em, Abstände vor CV und Kontaktlinks jeweils 1 em. Projektbereich und Desktop-Sidebar unverändert. WLAN-Vorschau auf Port 8001 aktualisieren.

- Übergang zwischen Kopf- und Hauptbereich bis 980 px kompakter: oberes Padding des Hauptbereichs einheitlich 2 em (bisher 6 em bei mittlerer Breite bzw. 2,25 em auf kleinen Bildschirmen). Desktop und Projektkarten unverändert.

- Publikationstext an Projektbeschreibungen angeglichen: Farbe #808080, Schriftgröße 0,8 em, Zeilenhöhe 1,5 em.
- Seitenabschluss bis 980 px kompakter: Hauptbereich unten 2 em, Publikationsabsatz ohne zusätzlichen unteren Außenabstand; Footer oben/unten 2 em, Credit-Gruppenabstand 1 em. Trennabstand zwischen Projects und Publications sowie Desktop-Footer unverändert.

- Publications feinjustiert: Abstand unter der Überschrift 0,65 em; bis 980 px Publikationstext 0,9 em statt 0,8 em, Hauptbereich unten 3 em statt 2 em für mehr Luft zum Footer. Breite Ansicht behält Schriftgröße 0,8 em.

- Publications näher an die Projekte gerückt: Abstand vor und nach der Trennlinie jeweils 2,5 em statt 4 em auf mittleren/breiten Ansichten. Unter dem Eintrag bis 980 px jetzt 4 em Abstand zum Footer statt 3 em; Überschrift-Eintrag-Abstand unverändert.

- Projekttitel auf der Hauptseite zusätzlich als Links zur jeweiligen Projektseite gesetzt, identisch zum Bildziel. Normale Darstellung unverändert; Hover/Fokus in bestehendem Türkis, Tastaturfokus zusätzlich mit sichtbarer Kontur. Reihenfolge Bild → Titel → Kontext → Beschreibung bleibt bestehen.


### Vorläufiges Format der Projektseite: Anguilla Search

- Kurze Einordnung und zwei Absätze zu Aufgabe und Umsetzung.
- Kompakte Zeilen „Methods“ (TF-IDF, cosine similarity, PageRank) und „Tools“ (Java, Maven, jsoup, Stanford CoreNLP).
- Ein Link „View project on GitHub“ für das gesamte Repository; keine separate Verlinkung der noch unvollständigen Dokumentation.
- Übernimmt die bereits abgestimmte Sidebar sowie das kompakte Layout auf schmalen Bildschirmen. Der Fließtext bleibt vorläufig und kann später überarbeitet werden.
- Aufräumen und Vervollständigen der Projekt-Repositories einschließlich Dokumentation folgen nach der Website.


### Offen nach Fertigstellung der Website: Survival-Analysis-Repository

- [ ] Ein kleines GitHub-Repository für die Überlebenszeitanalyse einrichten und aufbereiten: R-Skript, simulierten Datensatz und eine kurze README mit Hinweisen zur Ausführung aufnehmen.
- [ ] Anschließend `survival-analysis.html` aktualisieren: die einzelnen Links zu R-Skript und Datensatz unter „Project materials“ durch den tatsächlichen GitHub-Repository-Link ersetzen. Den direkten Link zum Projektbericht (PDF, Deutsch) beibehalten.
- Bis dahin bleiben die einzelnen Downloads auf der Website bestehen. Repository-Aufbereitung und Website-Aktualisierung gehören zu demselben offenen Arbeitsschritt.


## Gesicherte erste Website-Version (10. Oktober 2026)

- Fünf vollständige Projektseiten mit abgestimmten Texten, kurzen Skills-Zeilen und Project materials.
- Ausgangsdesign: Sternenhimmel auf der Startseite, individuelle Projektbilder; Anguilla mit Lupe, Survival Analysis mit bereitgestelltem Survival-Foto, Brownian Motion mit simulierten Pfaden aus dem Seminar.
- Projektseiten: Rückweg zur Übersicht im Kopfbereich, unten nur vorheriges/nächstes Projekt in der Reihenfolge der Übersicht. Keine zusätzliche Projektliste in der Sidebar.
- Heller, einheitlicher Footer im schmalen Layout; Credits vor Copyright, vorerst keine Kontaktlinks auf den Projektseiten.
- Designvergleiche separat auf Branch `feature/design-comparisons` erhalten.
- Noch offen: einheitliche schlichte Sidebar auf allen Seiten, optionale dezente Muster bei leerer Sidebar, Sidebar-Navigation ohne doppelte Navigation, kompakterer Footer und gegebenenfalls dezente Kontaktlinks.
- Anguilla: Netzwerkgraph als Übersichtsbild erneut prüfen. Projekt-Repositories und Dokumentation nach der Website aufbereiten; Survival-Repository und anschließende Website-Verlinkung bleiben zusammen offen (siehe oben).
