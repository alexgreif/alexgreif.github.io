# Portfolio: Designprüfung vom 10. Oktober 2026

## Stand und Vergleich

Alle Versuche liegen auf `feature/design-review`. Die sechs regulären Seiten und `assets/css/main.css` sind gegenüber `master` unverändert. Es wurde nichts zusammengeführt oder veröffentlicht.

[Vergleich öffnen](http://localhost:8001/design-review.html): links die gesicherte Version, rechts die Versuchsvariante. Seite, Variante und Darstellungsbreite lassen sich auswählen. Große Rahmen können horizontal gescrollt oder separat geöffnet werden.

Varianten:

- **Bilder, verfeinert:** bestehende Bilder und Aufbau mit kleinen Verbesserungen.
- **Schlichte Leiste:** einheitlicher Hintergrund, auch auf der Startseite.
- **Leiste mit Projektliste:** zusätzliche Navigation auf breiten Projektseiten; dort entfallen der obere Zurück-Link und Previous/Next unten. Im schmalen Layout bleibt die bisherige Navigation erhalten.
- **Brownian: Partikelillustration:** ruhiger dekorativer Entwurf mit einem größeren Teilchen, kleinen Punkten und einer unregelmäßigen Bewegungsspur.

## Vorgehen und Grenzen

Firefox wurde außerhalb der Sandbox für Screenshots verwendet. Geprüft wurden die sechs aktuellen Seiten, die vorhandenen 51 Vorschauseiten sowie die neuen Versuche. Hauptbreiten: 1866, 1280, 900 und 390 Pixel; ergänzend 320 Pixel, die Umschaltgrenze 980/981 Pixel und ein Laptopformat mit 720 Pixel Höhe. Für lange mobile Seiten und Footer wurden zusätzliche hohe beziehungsweise zum Footer gesprungene Aufnahmen angefertigt.

Die Screenshots wurden visuell ausgewertet. Die Firefox-Aufnahmen zeigen den jeweils eingestellten Ausschnitt; sie sind keine automatischen Full-Page-Aufnahmen. Linkziele, Fragmente und lokale Assets der 20 neuen Vergleichsseiten wurden zusätzlich überprüft. Dies ist keine vollständige Prüfung aller Browser, Interaktionen oder Barrierefreiheit.

Ältere Vorschauseiten enthalten teilweise frühere Texte und Layoutstände. Für faire Vergleiche verwenden die neuen Varianten überall die aktuell abgestimmten Inhalte.

## Beobachtungen zur gesicherten Version

| Bereich | Was funktioniert | Was auffällt |
| --- | --- | --- |
| Startseite | Klare Karten, sinnvolle Abstufung von Titel, Kontext und Kurzbeschreibung; drei, zwei und eine Spalte passen zu den geprüften Breiten. | Sterne sind lebendiger als eine neutrale Leiste. Bei 320 Pixeln wandert E-Mail in eine zweite Zeile, bleibt aber sichtbar. |
| Bachelorarbeit | Bild passt zum Thema; Materialien sind ohne Zusatzbeschreibung verständlich. | Bei mittleren Desktopbreiten steht das Jahr gelegentlich allein in einer Zeile. |
| Anguilla Search | Die Lupe funktioniert als Hintergrund auch im schmalen Format. | Dasselbe Motiv in Vorschau und Sidebar wiederholt sich. Der Graph ist als Hintergrund wegen Linien und URL-Beschriftungen deutlich unruhiger. |
| Survival Analysis | Schlichte Leiste ist ruhig und gut lesbar; Materialien und Skills sind klar zugeordnet. | Das Survival-Foto konkurriert stärker mit dem Inhalt und illustriert eher das Wort als das statistische Thema. Der abgestimmte Text bleibt mobil lang, aber lesbar. |
| Brownian Motion | Das Diagramm vermittelt in der Übersicht unmittelbar das Thema. | Als Hintergrund werden Achsen und Beschriftungen ungünstig angeschnitten; im schmalen Header liegen Details hinter dem Titel. |
| Chicago Bike Share | Fotografie und Projekt passen zusammen; die Erläuterungen der beiden Berichte unterscheiden ihre Aufgaben sinnvoll. | Lange Materialbeschreibungen benötigen mobil mehrere Zeilen. Das ist inhaltlich gerechtfertigt. |
| Untere Navigation | Vorheriges und nächstes Projekt sind direkt erreichbar; Titel helfen bei der Orientierung. | Die Navigation ist breiter als der Fließtext. Dadurch steht das nächste Projekt zu weit rechts. |
| Footer | Heller Hintergrund passt besser zur schmalen Projektseite als Sterne oder ein dunkler Block. | Abstand und Größe geben den Credits mehr Gewicht als nötig. Kontaktlinks erhöhen die Dichte erneut. |

Die aktuelle Position der Skills unter der Zusammenfassung funktioniert gut. Die früheren Alternativen unter dem Titel oder in der Sidebar schwächen entweder die Verbindung zwischen Titel und Zusammenfassung oder verdichten den linken Bereich.

## Erprobte Verbesserungen

1. **Navigation auf die Textbreite begrenzt.** Die Links stehen im gleichen Bereich wie Beschreibung und Materialien. Auf schmalen Seiten bleiben zwei gegenüberliegende Ziele erhalten; lange Namen dürfen umbrechen.
2. **Ausgewogenere Umbrüche für Titel und Kontext.** `text-wrap: balance` verhindert in den geprüften Fällen die isolierte Jahreszahl, ohne eine sehr kleine Schrift oder eine erzwungene einzelne Zeile zu benötigen.
3. **Dunklere Schrift und Links.** Auf weißem Grund steigt der rechnerische Kontrast von `#808080` (3,95:1) auf `#757575` (4,61:1), bei Links von `#49bf9d` (2,28:1) auf `#267d67` (4,99:1). Das hilft besonders kleinen Metadaten und Materiallinks. Die dunkleren Links verändern auch die visuelle Wirkung und bleiben eine bewusste Designoption.
4. **Kompakterer heller Footer.** Weniger Innenabstand und ein kleinerer Abstand zum Copyright reduzieren die Höhe. Kontaktlinks wurden nicht erneut hinzugefügt.
5. **Brownian-Diagramm stärker beschnitten.** Die problematischen Beschriftungen verschwinden aus den geprüften Headerausschnitten. Das Linienmuster bleibt allerdings relativ unruhig.
6. **Partikelillustration für Brownian Motion.** Ein eigener SVG-Entwurf zeigt schematisch ein Teilchen mit unregelmäßiger Bewegung. Für den schmalen Header gibt es eine Querformatfassung, damit das große Teilchen nicht abgeschnitten wird. Die Illustration ist dekorativ, keine maßstäbliche physikalische Darstellung und kein Projektergebnis.
7. **Projektliste ohne doppelte Navigation.** Auf Desktop ersetzt sie die bisherigen Navigationslinks. Bei 981 Pixeln und im Laptopformat kollidieren Liste und Footer nicht. Im schmalen Layout wird die Liste ausgeblendet, damit der Kopfbereich kompakt bleibt.

## Abwägung

| Variante | Stärke | Nachteil | Einschätzung |
| --- | --- | --- | --- |
| Individuelle Bilder | Persönlicher, jedes Projekt hat eine eigene visuelle Identität. | Unterschiedliche Unruhe und Textkontraste; wiederkehrende Auswahl passender Bilder nötig. | Gute Fortsetzung des bisherigen Designs, wenn Brownian einen ruhigeren Hintergrund bekommt. |
| Einheitliche schlichte Leiste | Ruhig, konsistent, gut lesbar und unabhängig vom Projektmotiv. | Auf breiten Bildschirmen bleibt links viel freie Fläche. | Mein Favorit für eine langfristig einfache Gestaltung. Freie Fläche muss nicht vollständig gefüllt werden. |
| Schlichte Leiste mit Projektliste | Alle fünf Projekte direkt erreichbar; freie Fläche erhält eine Funktion. | Mehr Elemente und wiederholte Projekttitel; skalierbar nur bei wenigen Projekten. | Brauchbarer Versuch, aber gegenüber der schlichten Leiste keine eindeutige Verbesserung. |
| Dezentes Muster | Etwas visuelle Struktur bei weiterhin ruhiger Fläche. | Kann schnell wieder hinter dem Text konkurrieren. | Nur für eine ansonsten freie Sidebar sinnvoll; nicht zusätzlich zur Projektliste. |

Die Lupe bleibt der überzeugendere Anguilla-Hintergrund. Der Graph lässt sich getrennt als Vorschaubild testen. Für Survival würde ich die schlichte Variante dem Foto vorziehen. Bei Brownian bietet die Partikelillustration einen Mittelweg zwischen Foto/Diagramm und völlig einfarbiger Fläche.

## Nächste sinnvolle Schritte

Zuerst Navigation, Umbrüche und die Brownian-Hintergrundwahl abschließen. Danach entscheiden, ob die Leiste überall einheitlich werden soll. Footer und erneute Kontaktlinks haben geringere Priorität. Die vorgemerkte Einrichtung eines Survival-Repositories mit anschließendem Update der Materiallinks bleibt ein eigener Arbeitsschritt.

## Beispielaufnahmen

Die Dateien liegen derzeit lokal in `/tmp/portfolio-design-review`; sie sind nicht im Repository gespeichert.

- [Partikelillustration, schmal](</tmp/portfolio-design-review/review-particles-brownian-motion-390-final.png>)
- [Partikelillustration, 900 Pixel](</tmp/portfolio-design-review/review-particles-brownian-motion-900-final.png>)
- [Schlichte Survival-Seite, schmal](</tmp/portfolio-design-review/review-plain-survival-analysis-390-final.png>)
- [Projektliste, Laptopformat](</tmp/portfolio-design-review/review-list-thesis-1280-laptop.png>)
- [Aktuelle Startseite, schmal](</tmp/portfolio-design-review/index-390-flow.png>)

## Nachtrag vom 11. Oktober: Position der Projektnavigation

Die Review-Varianten richten die untere Projektnavigation bei kurzen Desktopseiten am unteren Rand eines mindestens fensterhohen Hauptbereichs aus. Eine gleichbleibende Mindesthöhe der Navigation berücksichtigt umbrochene Projekttitel. Eine dezente Trennlinie und Mindestabstand grenzen sie von den Project Materials ab. Auf schmalen Seiten verteilt sich freie Höhe zwischen Kopfbereich und Footer; lange Seiten wachsen mit dem Inhalt, ohne feste oder überlagernde Navigation.

Firefox-Screenshots aller fünf Projektseiten bei 1280 Pixeln sowie zusätzliche Aufnahmen bei 900 und 390 Pixeln wurden geprüft. Im abschließenden Vergleich sitzen Anguilla- und Cyclistic-Navigation trotz unterschiedlich langer Titel auf derselben Höhe. Survival bei 720 Pixeln Fensterhöhe sowie mobile Seiten bei 844 Pixeln wachsen über das Fenster hinaus und lassen sich normal scrollen. Die Projektlisten-Variante behält auf Desktop ihre Navigation in der Sidebar. Die regulären Seiten bleiben unverändert.

## Weitere Variante: Previous/Next in der Sidebar

`review-sidebar-*.html` bündelt auf breiten Projektseiten den Übersichtslink und Previous/Next in der Sidebar. Die Position und reservierten Zeilenhöhen sind seitenübergreifend gleich. Am ersten und letzten Projekt bleibt der nicht vorhandene Nachbarplatz leer, damit der andere Link seine Position behält. Im Hauptbereich entfällt die Projektnavigation. Unterhalb von 981 Pixeln bleibt der Übersichtslink oben und Previous/Next unten. Die Startseite verwendet dieselbe schlichte Hintergrundfarbe.

Alle fünf Projekte wurden mit Firefox bei 1280 × 720 Pixeln aufgenommen; ergänzend die Bachelorarbeit bei 981 Pixeln, Survival bei 1866 und 900 Pixeln sowie Brownian bei 390 Pixeln. Navigation, Titel und Footer überlappen in den geprüften Ansichten nicht. Die lokalen Links und Fragmente aller sechs neuen Seiten sind geprüft. Die Variante ist im Designvergleich als „Leiste mit Previous/Next“ auswählbar.

### Kompaktere Gestaltung der Sidebar-Navigation

Der Navigationsblock ist jetzt linksbündig, während Projekttitel und Kontext rechtsbündig bleiben. Pfeile stehen vor den Labels Previous/Next; die Projektnamen folgen eingerückt darunter. Label und Projektname bilden gemeinsam einen anklickbaren Link. Kleinere Abstände und eine einheitliche dezente Linkfarbe verbinden die drei Navigationsziele optisch. Reservierte Nachbarplätze halten die Positionen auch auf der ersten und letzten Projektseite konstant. Die mobile Navigation bleibt unverändert. Screenshots bei 981, 1280, 1866 und 390 Pixeln zeigen keine Überlappungen.

## Alternative nach Feedback zur gemischten Ausrichtung

Zwei weitere Varianten ergänzen den Vergleich:

- `review-row-*.html`: Previous und Next stehen auf Desktop als eine Zeile links/rechts in der Sidebar, ohne sichtbare Nachbarprojektnamen. Der Übersichtslink und die übrige Sidebar bleiben rechtsbündig. Die Nachbarprojektnamen sind als Linktitel hinterlegt. Im schmalen Layout bleibt die bisherige untere Navigation erhalten.
- `review-subtle-*.html`: Previous/Next bleiben unten im Hauptbereich, mit etwas kleinerer Schrift und grauen Links ohne Unterstreichung. Materialien behalten ihre grüne Linkfarbe. Trennlinie, Abstand und die Ausrichtung unten bei kurzen Seiten bleiben erhalten.

Beide Varianten lassen sich mit `?sidebar=25` auf 25 % Sidebar-Breite statt 30 % umschalten; die Einstellung wird beim Wechsel zwischen Projekten und Übersicht mitgenommen. Im Vergleich gibt es dafür einen separaten Schalter. Unterhalb von 981 Pixeln ändert die Option das Layout nicht.

Firefox-Aufnahmen bei 1866, 1280, 981 und 390 Pixeln sind geprüft. Die kompakte Zeile passt auch bei 981 Pixeln und 25 % Sidebar. Der Bachelorarbeitstitel bricht dort auf zwei Zeilen um, während das Jahr zusammen mit Kontexttext bleibt. In der schmaleren Startseiten-Sidebar stehen die Kontaktlinks teilweise auf zwei Zeilen; auch Credits umbrechen früher. Die schmalere Leiste ist daher eine eigenständige Abwägung. Lokale Links, Assets und Fragmente aller zwölf neuen Seiten sowie die Syntax des Breiten-Skripts sind geprüft.

### Etwas tiefere dezente Desktop-Navigation

Der untere Innenabstand des Hauptbereichs ist in der dezenten Variante auf Desktop um 20 Pixel reduziert. Bei kurzen Seiten rückt die Navigation dadurch 20 Pixel nach unten und es steht entsprechend mehr Platz oberhalb zur Verfügung. Die reservierte Navigationshöhe bleibt gleich, damit umbrochene Projekttitel die Position nicht verändern. Bei längeren Seiten bleibt der Mindestabstand zum Inhalt maßgeblich und die Seite wächst normal. Das schmale Layout bleibt unverändert. Firefox-Aufnahmen bei 981, 1280 und 1866 Pixeln einschließlich eines 720 Pixel hohen Fensters sind geprüft.

## Weitere Prüfung: Textbreite, Startseitenumbruch und Icon-Credits

Die bevorzugte dezente Variante erhält folgende Anpassungen:

- Der Umbruch nach „Hi, I'm Alex.“ bleibt auch im mittleren Desktopformat sichtbar. Der anschließende Satz darf natürlich umbrechen; die Sidebar hat bereits nur 1em seitlichen Innenabstand. Die rechtsbündige Ausrichtung erzeugt zusätzlich scheinbaren Leerraum links.
- Mit `&text=80` lässt sich die Begrenzung von Projektinhalt und Navigation von 70ch auf 80ch erweitern. Der Vergleich enthält einen eigenen Schalter; die Einstellung bleibt beim Wechsel zwischen Projekten erhalten. Der Hauptbereich nutzt mit schmalerer Sidebar bereits 75 % der Fensterbreite, die Textbegrenzung ist davon unabhängig.
- Der Desktop-Innenabstand unten ist nun insgesamt um 30 Pixel reduziert, also weitere 10 Pixel gegenüber der vorherigen Variante. Lange Seiten behalten ihren Mindestabstand zum Inhalt und wachsen normal.
- Die Icons-Zeile entfällt in allen sechs dezenten Vorschauseiten. Die tatsächlich sichtbaren LinkedIn-, GitHub- und E-Mail-Icons stammen ausschließlich aus Font Awesome Free 5.15.4. Icons8 und Devicon werden in den aktuellen sechs regulären Seiten nicht mehr verwendet. Die eingebetteten Lizenzhinweise bleiben erhalten; zusätzlich liegt die unveränderte versionsbezogene Lizenz in `assets/webfonts/LICENSE-font-awesome.txt`. Die Lizenz erklärt ausdrücklich, dass die eingebetteten Hinweise bei normaler Verwendung ausreichen. Quelle: https://github.com/FortAwesome/Font-Awesome/blob/5.15.4/LICENSE.txt

Firefox-Screenshots bei 390, 981, 1280 und 1866 Pixeln wurden geprüft, einschließlich 981 × 720 Pixeln. Startseite, breiterer Projekttext, reduzierter Footer und tiefere Navigation bleiben in den geprüften Ansichten ohne Überlappung. Aufnahmen liegen lokal in `/tmp/portfolio-layout-refinements`. Die regulären Seiten und `master` bleiben unverändert.

## Gleiche Verbesserungen mit Bildhintergründen

Die sechs `review-photos-*.html` verwenden jetzt ebenfalls die dezente untere Navigation, den wiederhergestellten Startseitenumbruch und den reduzierten Footer ohne Icons-Zeile. Sidebar 25 % und Textbreite 80ch sind für diese Variante im Vergleich auswählbar und bleiben beim Navigieren erhalten. Design- und Unsplash-Credits bleiben sichtbar. Die bisherigen Bildhintergründe bleiben erhalten; ihre Auswahl wird durch diesen Layoutvergleich nicht abschließend entschieden.

Auf Desktop werden die Navigationszeilen in der Bild- und dezenten Variante innerhalb des reservierten Bereichs unten ausgerichtet. Die beiden Nachbarlinks richten sich auch bei unterschiedlichen Zeilenumbrüchen am unteren Rand aus. 2em Innenabstand halten sie vom Fensterrand entfernt. Inhalt und Navigation bleiben im normalen Dokumentfluss, sodass lange Seiten scrollen. Mobile Positionierung bleibt unverändert.

Firefox-Aufnahmen der Bachelorarbeit und Survival bei 1280 × 1030 zeigen jetzt dieselbe Höhe der Links. Zusätzlich geprüft: Bildvariante Anguilla bei 1280, Startseite bei 1866, Bachelorarbeit bei 390 sowie Survival bei 981 × 720 (Inhalt wächst über die Fensterhöhe und scrollt). Aufnahmen: `/tmp/portfolio-bottom-nav`.

Unsplash empfiehlt freiwillige sichtbare Fotografennennung mit Link; Quelltextkommentare oder Metadaten bieten keine vergleichbare Sichtbarkeit. Für normale Unsplash-Lizenzbilder bleibt die Nennung freiwillig; API-Nutzung hat eigene verpflichtende Regeln. Quellen: https://unsplash.com/license und https://help.unsplash.com/en/articles/2612337-do-i-have-to-give-credit-to-a-contributor-when-i-use-their-image

## Korrektur des Navigationsplatzes und vorläufige Bildauswahl

Die feste Mindesthöhe von 7em im Desktop-Navigationsbereich führte bei Survival unnötig zum Scrollen. In den dezenten und Bildvarianten entfällt diese Mindesthöhe nun; margin-top:auto hält die Navigation bei kurzen Seiten weiter unten. Bei unterschiedlichen Titellängen bleiben die unteren Linkzeilen ausgerichtet. Firefox-Aufnahmen von Survival und Bachelorarbeit bei 1866 × 1030 (70ch) zeigen dieselbe Höhe und vollständig sichtbare Links. Survival bei 981 × 720 mit 80ch passt ebenfalls vollständig ins Fenster. Die mobile Gestaltung bleibt unverändert.

Die Startseiten der beiden Varianten verwenden für Anguilla nun den vorhandenen gerichteten Website-Graphen (`images/previews/anguilla-original-graph.png`), vollständig in der Vorschau enthalten. Die Projektseite behält die Lupe. Die Brownian-Projektseite der Bildvariante verwendet vorläufig die vorhandene Partikelillustration. Sie bleibt als stark stilisierter Entwurf vorgemerkt: kleinere Teilchen sollten später deutlicher erkennbar sein. Screenshots von Übersicht und Brownian bei 1280 Pixeln wurden geprüft. Aufnahmen liegen in `/tmp/portfolio-nav-fix`.

## Survival: tatsächliche Browser-Inhaltshöhe und einfache Abstände

Die Navigation war bei 1866 × 947 Pixeln weiterhin abgeschnitten. Die vorherige Prüfung bei 1030 Pixeln hatte die verringerte Inhaltshöhe durch Tabs und Adressleiste nicht berücksichtigt. Dieser Fehler wurde reproduziert.

Die endgültige Korrektur verwendet ausschließlich einheitliche Desktop-Abstände: 3em oben, 1.25em unten, 1em Abstand zwischen Inhalt und Navigation, .75em oberhalb der Navigationslinks. Die bestehenden Flexbox-Regeln (`min-height:100svh` und `margin-top:auto`) richten die Navigation unten aus, wenn Inhalt und Abstände ins Fenster passen. Lange Inhalte wachsen normal. Es gibt keine neuen Abfragen bestimmter Fensterhöhen und keine JavaScript-Positionsberechnung. Zwischenzeitlich getestete Höhen-Breakpoints wurden wieder entfernt.

Die finale schlichte Survival-Seite mit Sidebar 25 % und 70ch wurde bei 1866 × 947 Pixeln erneut mit Firefox aufgenommen: Beide Navigationslinks sind vollständig sichtbar, mit Abstand zum unteren Rand. Die gleichen Abstände wurden zuvor auch bei 30 % Sidebar, der Bildvariante sowie bei 1280 × 720 und 981 × 720 geprüft. Aufnahmen: `/tmp/portfolio-survival-simple/survival-1866-947.png` sowie `/tmp/portfolio-survival-viewport-fix`. Bei noch kleineren Fenstern oder mehr Inhalt bleibt normales Scrollen möglich; es wird nichts überdeckt oder abgeschnitten.

## Vergleich von 25, 28 und 30 Prozent Sidebar

Der Designvergleich enthält jetzt eine Auswahl für 25, 28 und 30 Prozent Sidebar, anstelle des bisherigen 25-Prozent-Schalters. Alle drei Optionen verwenden denselben seitlichen Innenabstand von 1em, damit tatsächlich die Breite verglichen wird. Die URL-Option wird beim Wechsel zwischen Übersicht und Projekten mitgenommen. Sie gilt für Bild-, dezente und kompakte Sidebar-Varianten; unterhalb von 981 Pixeln bleibt der Kopfbereich unverändert.

Firefox-Aufnahmen der Startseite bei 1280 und 1866 Pixeln zeigen: 25 Prozent bricht den Begrüßungssatz um; 28 und 30 Prozent enthalten ihn jeweils in einer Zeile. 28 Prozent ist ein guter Mittelweg und bleibt eine Vergleichsoption, noch keine endgültige Auswahl. Die Projektübersicht behält bei 1866 Pixeln drei und bei 1280 Pixeln zwei Spalten. Die Survival-Seite wurde mit 28 und 30 Prozent bei 1866 × 947 geprüft: Navigation vollständig sichtbar. Zusätzlich wurde die Startseite bei 390 Pixeln geprüft. Aufnahmen: `/tmp/portfolio-sidebar-widths`.

## Vorgemerkte Gestaltungs- und Inhaltsideen

- Sidebar-Breite: Der Nutzer tendiert derzeit zu 30 Prozent als runderem Wert; 25 Prozent bleibt ebenfalls akzeptabel. Die endgültige Wahl hängt möglicherweise von Bild- oder schlichtem Design ab. 28 Prozent war optisch überzeugend, soll aber nicht allein auf die aktuelle Bildschirmgröße optimiert werden.
- Schlichte Projekt-Sidebar: später ein kleines projektbezogenes Bild zwischen Projekttitel/Übersichtslink und Credits ausprobieren. Das könnte Wiedererkennung und eine persönlichere Gestaltung ermöglichen. Position des Übersichtslinks ober- oder unterhalb des Bildes bleibt offen; mobile Umsetzung separat abwägen. Jetzt kein zusätzliches Bild eingebaut.
- Erste/letzte Projektseite: die jeweils freie Nachbarposition eventuell für einen Übersichtslink nutzen. Noch nicht umgesetzt.
- Rückweg: „Back to projects“ springt gezielt zur Projektübersicht auf der Startseite; ein „Home“-Link würde stattdessen zum Seitenanfang führen. Bezeichnung und Ziel später gemeinsam entscheiden.
- Startseitennavigation: die beiden Sprunglinks könnten angesichts der kurzen Seite entfallen oder anders gestaltet werden. Der Publications-Sprung kann die letzte Sektion nicht oben ausrichten, wenn darunter nicht genug Inhalt zum Scrollen bleibt. Keine künstliche zusätzliche Leerfläche eingefügt.
- Veröffentlichung: sichtbar behalten; mögliche Alternativen sind ein informativerer Forschungs-/Publikationseintrag, eine eigene Seite oder ein Projekt mit Beschreibung des eigenen Beitrags und Publikationshinweis. Eine einzelne rein bibliografische Angabe wirkt derzeit eher wie ein Quellenverzeichnis. Keine Inhalts- oder Strukturänderung vorgenommen; der eigene Beitrag muss vor einer neuen Projektbeschreibung geklärt werden.

Der beobachtete Höhenversatz auf den Projektseiten stammte aus unterschiedlichen oberen Innenabständen (Sidebar 4em, Hauptbereich 3em), nicht aus der Anzahl der Textzeilen. In den bevorzugten Bild- und schlichten Vorschauen verwenden jetzt beide 3em. Die Startseite und mobile Kopfbereiche bleiben unverändert.


## Veröffentlichung als sechstes Projekt

In den bevorzugten schlichten und Bildvarianten ist die Veröffentlichung jetzt ein eigenes Forschungsprojekt: `review-subtle-study-satisfaction.html` und `review-photos-study-satisfaction.html`. Beide Startseiten enthalten sechs Projekte. Die separate Publications-Sektion und die beiden Sprunglinks entfallen. Rücklinks führen direkt zur jeweiligen Startseite ohne `#projects`. Chicago Bike Share Analysis verlinkt als nächstes Projekt auf die neue Seite; die neue Seite verlinkt zurück auf Chicago. Der Vergleich enthält den neuen Eintrag ebenfalls; links erscheint die gespeicherte Startseite, da es in der gespeicherten Version noch keine eigene Seite für die Studie gibt. Historische andere Vergleichsvarianten bleiben unverändert.

Die Beschreibung stützt sich auf die aktuelle, bereits geprüfte Lebenslaufbasis unter `Bewerbungsgrundlage/lebenslauf_basis.md`, Abschnitt „Studienzufriedenheit im Sportlehramtsstudium“, und die veröffentlichte Gesamtausgabe unter `Projekte/Studienzufriedenheit/Beitraege_zur_Hochschulforschung_2026_2_Gesamtausgabe.pdf` im Bewerbungsunterlagen-Verzeichnis. Der eigene Beitrag umfasst quantitative Analyse, ursprüngliche quantitative Methoden- und Ergebnisteile sowie quantitative Abbildungen und Tabellen. Qualitative Interviews werden als Kontext der gemeinsamen Studie beschrieben, ohne sie dem Nutzer als eigene Leistung zuzuschreiben. Die Übersicht kennzeichnet 2026 ausdrücklich als Publikationsjahr, nicht als Jahr der Datenerhebung.

Project materials enthält den bereits verwendeten DOI-Link zur gesamten Zeitschriftenausgabe mit ausdrücklichem Hinweis auf die Artikel-Seiten 110-139 sowie die bibliografische Angabe. Kein artikelbezogener DOI wird behauptet. Eine kleine gerenderte Titelseite dient vorläufig als Vorschaubild (`images/thumbs/study-satisfaction-preview.png`, physische PDF-Seite 114 / gedruckte Seite 110). Als großflächiger Hintergrund war die Textseite zu unruhig; die neue Projektseite verwendet deshalb vorläufig auch in der Bildvariante eine schlichte Sidebar. Ein anderes Bild bleibt offen.

Geprüft mit Firefox außerhalb der Sandbox: neue Seite bei 1866 × 947, 1280 × 720 und 390 × 1500, Bildvariante bei 1866 × 947, vollständige Übersicht bei 1866 × 1200 und Chicago mit neuem Nachbarlink bei 1866 × 947. Die neue Projektseite und die Nachbarlinks passen in die geprüften Desktopfenster; mobile Inhalte bleiben lesbar und wachsen normal. Screenshots: `/tmp/portfolio-publication-final`. Alle lokalen Links und Assets der 14 bevorzugten Vorschauseiten sowie JavaScript-Syntax wurden geprüft. Die regulären Seiten und `master` bleiben unverändert. Der externe DOI wurde in dieser Prüfung nicht live validiert.


### Kompakter Publikationsblock und Schreibbeitrag

Nach Rückmeldung des Nutzers lautet die Formulierung nun „wrote the quantitative methods and results sections“, ohne „initial drafts“. Der explizite Zusatz „with me as a co-author“ entfällt; die Autorschaft steht in der Literaturangabe. „Study satisfaction“ bleibt erhalten: Die Dokumentation des verwendeten Instruments nennt als englischen Titel „Study Satisfaction Questionnaire - Short Form“ (https://www.psycharchives.org/en/item/e876dcb3-efe0-44f4-81dc-db2eda5e29de); der Begriff wird auch in englischsprachigen Forschungsartikeln verwendet.

Auf der neuen Seite ersetzt „Publication“ den Abschnitt „Project materials“. Der Artikeltitel ist direkt innerhalb der Literaturangabe verlinkt; ein kurzer Hinweis erklärt, dass der Link die vollständige Zeitschriftenausgabe öffnet. Der separate zusätzliche Link entfällt. In beiden bevorzugten Varianten umgesetzt und auf Desktop (1866 × 947) sowie mobil (390 × 1400) mit Firefox geprüft; Screenshots unter `/tmp/portfolio-publication-block`.

Die übrigen bevorzugten Seiten wurden bezüglich ihrer Materialien durchgesehen, aber nicht geändert: Bei Brownian, Survival und Chicago bündelt „Project materials“ mehrere Dateien und ist sinnvoll. Bei Anguilla (ein Repository) und der Bachelorarbeit (eine PDF) ist die Überschrift optional; eine einfachere Darstellung mit einem einzelnen Link kann später gemeinsam geprüft werden.


### Journal-Link und Abgleich der Ergebnisdarstellungen

Die übrigen Project-materials-Abschnitte bleiben auf ausdrücklichen Nutzerwunsch erhalten. Auf der Forschungsprojektseite liegt der DOI-Link jetzt auf dem kursiven Zeitschriftennamen mit Bandnummer statt auf dem Artikeltitel. Der zusätzliche Sprach-/Linkhinweis entfällt. Die bibliografische Angabe enthält weiter Ausgabe und Artikel-Seiten, der DOI verweist weiter auf die Gesamtausgabe.

Die Skills-Zeile ist auf „R · Factorial ANOVA“ reduziert. Der veröffentlichte Artikel wurde separat auf Abbildungen und Tabellen geprüft: Tabellen 1-4 auf gedruckten Seiten 132-134 zeigen quantitative Daten/Ergebnisse. Die einzige Abbildung (S. 138) zeigt den Kurzfragebogen, keine quantitative Ergebnisgrafik. Die Beschreibung nennt deshalb nur noch die quantitativen Tabellen. Vom Nutzer bestätigte explorative Abbildungen während der Analyse werden dadurch nicht bestritten, aber nicht als Veröffentlichungsbestandteil dargestellt.

Reihenfolge noch offen: Empfehlung, das Forschungsprojekt direkt nach der Bachelorarbeit einzusortieren, um angewandte Forschung und Veröffentlichung früher sichtbar zu machen. Noch keine Änderung der Projekt- oder Navigationsreihenfolge.


### Forschungsprojekt auf Platz zwei

Nach Zustimmung des Nutzers steht das Forschungsprojekt in beiden bevorzugten Übersichten direkt nach der Bachelorarbeit. Die Reihenfolge lautet: Bachelorarbeit, Studienzufriedenheit, Anguilla Search, Survival Analysis, Brownian Motion, Chicago Bike Share Analysis. Die Previous-/Next-Verknüpfungen folgen derselben Reihenfolge; Chicago ist wieder das letzte Projekt ohne Next-Link. Die regulären Seiten und historischen anderen Designvarianten bleiben unverändert.


Beide Übersichten und alle zwölf Previous-/Next-Verknüpfungen wurden auf Reihenfolge und Gegenverlinkung geprüft. Firefox-Sichtprüfung: schlichte Übersicht bei 1866 × 1200, Forschungsprojekt bei 1866 × 947 und 390 × 1400. Keine Überlappungen; beide Nachbarlinks sichtbar. Screenshots: `/tmp/portfolio-project-order`.

Vorgemerkt zur Bildauswahl: Die Mischung aus illustrativen Kontextfotos (Bachelorarbeit/Chicago) und sachlichen Arbeitsdarstellungen (Graphen/Artikel) ist dem Nutzer aufgefallen, aber nicht grundsätzlich abgelehnt. Artikelvorschau vorerst behalten; ein engerer Ausschnitt auf Titel und Autoren könnte die Wiedererkennung in der kleinen Karte verbessern. Noch keine neue Bildvariante erstellt.


### Engerer Ausschnitt der Artikelvorschau

Auf Nutzerwunsch verwenden die beiden bevorzugten Projektübersichten nun einen Ausschnitt der Artikelseite, der „Forschungsartikel“, den vollständigen Titel und die Autoren zeigt. `images/thumbs/study-satisfaction-title.svg` rahmt den entsprechenden Bereich der unveränderten PNG-Datei ein (viewBox 70 25 620 235). Die Originalvorschau der gesamten Seite bleibt erhalten. Keine generative Neuzeichnung des Textes und keine Änderung am PDF.

Firefox-Screenshots bei 1866 × 1200 und 390 × 2300 wurden geprüft: Titel und Autoren sind vollständig im Vorschaubereich enthalten und deutlich größer als zuvor; das bestehende Kartenformat bleibt erhalten. Aufnahmen: `/tmp/portfolio-article-crop`. Der Zuschnitt gilt nur für die beiden bevorzugten Vergleichsvarianten auf dem Feature-Branch.


### Startseite ohne sichtbare Projects-Überschrift

Nach Zustimmung des Nutzers entfällt die sichtbare Projects-Zeile auf beiden bevorzugten Startseiten. Die Überschrift bleibt visuell verborgen für Screenreader erhalten; sie belegt keinen Platz im Layout. Die erste Bildreihe beginnt entsprechend weiter oben, ohne zusätzliche Anpassung der Seitenabstände. Firefox-Sichtprüfung: beide Varianten bei 1866 × 947 sowie schlichte Variante bei 390 × 1600. Keine Überlappungen; Aufnahmen unter `/tmp/portfolio-no-heading`. Die reguläre Startseite bleibt unverändert.


### Tabellen-Ausschnitte als zusätzliche Artikelvorschauen

Die beiden vom Nutzer bereitgestellten Tabellenbilder werden in unveränderten PNG-Daten innerhalb zweier SVG-Rahmen verwendet: `study-satisfaction-anova.svg` (viewBox 25 42 480 184) und `study-satisfaction-comparisons.svg` (viewBox 42 49 562 265). Sie zeigen ausdrücklich nur Ausschnitte; vollständige Lesbarkeit ist nicht das Ziel. Die bisherige Titel-/Autorenvorschau bleibt der Standard. In beiden bevorzugten Übersichten lassen sich die Varianten mit `article=title`, `article=anova` oder `article=comparisons` vergleichen. Der Designvergleich bietet dafür eine Auswahl. Die Auswahl bleibt beim Wechsel zwischen bevorzugten Vorschauseiten erhalten. Keine Änderung der regulären Website oder der PDF-Quelle.

Die Idee eines eigenständigen Tabellenbilds innerhalb der schlichten Projekt-Sidebar bleibt vorgemerkt. Kein Tabellenbild als Hintergrund hinter Projekttitel oder Navigation eingebaut, da die übereinanderliegenden Textstrukturen zu unruhig wären.

Der mobile Footer der schlichten Startseite hatte weiterhin den Sternenhimmel aus der regulären Vorlage geerbt. Für `review-subtle` gilt unterhalb des Sidebar-Breakpoints nun durchgängig derselbe helle Hintergrund ohne Bild, mit grauem Text und dezentem Rand wie auf den Projektseiten. Die Bildvariante bleibt davon unberührt.

Firefox-Sichtprüfung der beiden Tabellenvarianten bei 1866 × 947 und 390 × 2900 einschließlich des gesamten mobilen Footers. Beide Ausschnitte laden korrekt; der helle Footer hat keinen Sternenhimmel und die Credits sind lesbar. JavaScript-Syntax und SVG-XML geprüft. Screenshots: `/tmp/portfolio-table-previews`.


### ANOVA-Ausschnitt horizontal zentriert

Der ANOVA-Rahmen ist auf Nutzerwunsch horizontal auf die tatsächliche Tabellenbreite zentriert: viewBox nun `66 42 480 184` statt `25 42 480 184`. Die Tabelle reicht ungefähr von x=25 bis x=587, sodass beidseitig etwa 41 Pixel entfallen. Der Ausschnitt soll als statistisches Tabellenbild wirken; vollständige Lesbarkeit ist ausdrücklich nicht erforderlich. Ausschnittgröße und vertikale Position bleiben erhalten. Firefox-Sichtprüfung bei 1866 × 947 und 390 × 1500; beide Seiten werden nun symmetrisch beschnitten. Screenshots: `/tmp/portfolio-centered-anova`.


### Kürzerer Kartentitel und Tabellen mit Artikelkontext

Die bevorzugten Übersichten verwenden nun „Satisfaction in Teacher Education“ als kürzeren Kartentitel. Projekttitel, Seitentitel und Nachbarlinks behalten die vollständige Bezeichnung mit „Study Satisfaction“ und PE. Der kürzere Kartentitel wurde bei 1866, 1280 und 390 Pixeln geprüft und passt dort jeweils in eine Zeile, ohne erzwungenes nowrap. „Teacher Education Student Satisfaction“ und „Teacher Education Study Satisfaction“ wurden zusätzlich als Optionen genannt, aber wegen der sperrigeren Aneinanderreihung von Substantiven noch nicht eingesetzt.

Die beiden Tabellenvorschauen enthalten jetzt mehr Artikelkontext: ANOVA mit Tabellenüberschrift und Beginn der Fußnoten (viewBox `15 8 590 287`), paarweise Vergleiche mit Tabellenüberschrift und einem Teil der Zeilen (viewBox `24 12 595 305`). Der vorherige symmetrische Anschnitt der Tabellenränder wird dadurch abgelöst. Vollständige Lesbarkeit bleibt ausdrücklich kein Ziel; die Vorschau soll als echter Artikel-/Tabellenausschnitt erkennbar sein. Beide Varianten bei 1866 × 947 und 390 × 1500 mit Firefox geprüft. Screenshots: `/tmp/portfolio-article-table-excerpts`; Titelprüfung: `/tmp/portfolio-short-title`.


### Abgleich der Tabellen mit der veröffentlichten Fassung

Die beiden SVG-Vorschauen verwenden jetzt Raster der tatsächlichen veröffentlichten PDF-Seiten (gedruckte Seiten 133 und 134, PDF-Seiten 137 und 138) statt der hochgeladenen Tabellenbilder. Wichtig: Im hochgeladenen Bild von Tabelle 3 stehen alle Zählerfreiheitsgrade auf 1; die veröffentlichte Tabelle enthält korrekt 3 für Schulform und die entsprechenden Interaktionen. Die Abweichung betrifft die bisherige Bildquelle, nicht die veröffentlichte Tabelle.

ANOVA-viewBox jetzt `100 490 570 325`, Vergleiche `90 90 580 395`, jeweils bezogen auf 757 × 1100 Pixel große PDF-Raster. Tabelle 3 enthält nun die Überschrift, alle Tabellenzeilen und alle vier Fußnoten. Tabelle 4 enthält Überschrift und alle Zeilen, ohne die folgende Tabelle 5 anzuschneiden. Der frühere innere Beschnitt der Fußnoten entstand durch den SVG-Rahmen und ist korrigiert.

Methodische Einschätzung nach Abgleich mit dem Methodenteil: leichte Präferenz für Tabelle 4 als Vorschau, weil geschätzte Unterschiede, 95%-Konfidenzintervalle, Teststatistiken, p-Werte und Cohen’s d gemeinsam berichtet werden. Vorzeichen, Intervalle und Signifikanzangaben sind beim sichtbaren Abgleich plausibel. Tabelle 3 ist als Überblick sinnvoll, enthält aber keine F-Werte oder genauen p-Werte. Dies ist keine vollständige Überprüfung der Analyse; Daten und R-Code wurden hier nicht nachgerechnet. Für eine vollständig eigenständige Darstellung von Tabelle 4 wären Kontrastrichtung, Standardisierung von d und Umgang mit Mehrfachvergleichen hilfreiche Zusatzangaben; ihr Fehlen in der Tabelle allein beweist keinen Analysefehler. Der Standard bleibt vorerst die Titel-/Autorenvorschau, da die endgültige Bildwahl offen ist.

Firefox-Sichtprüfung bei 1866 × 947 und 390 × 1500 für beide Tabellen: vollständige Fußnoten bzw. Tabellenzeilen sichtbar, keine abgeschnittene Folgetabelle. Screenshots unter `/tmp/portfolio-published-table-previews`. SVG-XML geprüft. Ausschließlich Vergleichsassets auf `feature/design-review` geändert.


### Bestätigte Einleitung, Tabelle 4 und gemeinsam klickbare Navigation

Beide bevorzugten Startseiten verwenden die bestätigte Einleitung „Here you'll find a selection of my work in statistics, data analysis and software development.“ Tabelle 4 (paarweise Vergleiche) ist nach ausdrücklicher Auswahl des Nutzers der Standard der Artikelvorschau, auch im Designvergleich. Die alternativen Ausschnitte bleiben zum späteren Vergleich verfügbar.

Auf allen zwölf bevorzugten Projektseiten sind Previous-/Next-Beschriftung und Projektname jeweils innerhalb eines gemeinsamen Links zusammengefasst. Die kleinere Beschriftung bleibt dezent; beim Hover oder Tastaturfokus übernimmt sie die Hervorhebungsfarbe des Links. Keine doppelten Links oder zusätzlichen Tabstopps. Layoutposition und Nachbarziele bleiben erhalten.

Firefox-Screenshots: schlichte Startseite bei 1866 × 947, Bild-Startseite bei 390 × 1500, Anguilla-Navigation bei 390 × 1400, Survival-Navigation bei 1866 × 947. Einleitung ohne Überlappungen; gewählte Tabelle lädt ohne URL-Option; Survival-Navigation vollständig innerhalb des Desktopfensters. HTML-Struktur aller zwölf Navigationsbereiche geprüft. Ausschließlich Designvorschauen auf dem Feature-Branch geändert.


### Kurzform in Nachbarlinks und Ausrichtung im schmalen Layout

Nach Zustimmung des Nutzers nennen die Nachbarlinks das Forschungsprojekt nun „Satisfaction in Teacher Education“, entsprechend der Übersicht. Der vollständige Titel bleibt auf der Projektseite erhalten. Beide bevorzugten Varianten geändert. Firefox-Abgleich der aktuellen schlichten Anguilla-Seite mit der gesicherten regulären Seite bei 900 × 1030: Die auf 70ch begrenzte Textspalte ist in beiden gleich breit und links im gepolsterten Hauptbereich verankert; die asymmetrische freie Fläche rechts wurde nicht durch die jüngste Änderung eingeführt. Die aktuelle Navigation folgt dieser begrenzten Spaltenbreite, während die ältere Navigation die ganze verfügbare Hauptbereichsbreite nutzte. Keine Änderung der Textausrichtung vorgenommen. Screenshots `/tmp/portfolio-width-current.png` und `/tmp/portfolio-width-saved.png`.

Für den späteren Hybridversuch vorgemerkt: rechts verankerter Bild-Halbkreis im freien Desktop-Sidebarbereich. Im schmalen Header bevorzugt der Nutzer entweder einen vollständigen Bildhintergrund oder den schlichten Hintergrund. Beim Forschungsartikel kann ein illustratives Sportstudierendenfoto mit der Tabelle als eigenständigem Halbkreisbild verglichen werden; Tabelle 4 bleibt die feste Übersichtsvorschau. Tabelle nicht als Vollflächenhintergrund hinter Text vorgesehen. Brownian-Partikelbild weiterhin gesondert verbessern. Noch keine neuen Bildvarianten umgesetzt.


### Breitenbegrenzung erneut offen und zentrierte Inhaltsspalte

Korrektur des früheren Vergleichs: Die regulären lokalen Seiten enthielten bereits die bei der Layoutüberarbeitung in Commit ed32c16 eingeführte 70ch-Begrenzung. Sie waren daher keine unveränderte Referenz der ursprünglich veröffentlichten Website. Die 70ch-Auswahl war eine Implementierungsentscheidung des Assistenten und wurde nicht separat ausdrücklich mit dem Nutzer abgestimmt. Nach Nutzerfeedback wird die Lesebreite erneut neutral verglichen.

Designvergleich bietet jetzt 70ch, 80ch, 96ch und volle verfügbare Breite (URL text=80|96|full) sowie optional Zentrierung (align=center). Zentriert wird die gesamte Inhaltsspalte einschließlich Materialien und Navigation, nicht die Textausrichtung. Beide Optionen bleiben beim Wechsel zwischen bevorzugten Projektseiten erhalten. Kein neuer Standard gewählt; keine regulären Seiten geändert.

Firefox-Screenshots bei 900 × 947 (80ch, volle Breite, 70ch zentriert) und 1866 × 947 (96ch, volle Breite, 96ch zentriert), jeweils Survival. Alle Optionen ohne Überlappungen. Auf dem breiten Desktop wirkt unbegrenzte Breite sehr langzeilig; bei 900 Pixeln nutzt sie den vorhandenen Platz plausibel. Zentrierte 70ch bei 900 Pixeln verteilt den bisher asymmetrischen Weißraum gleichmäßig; 96ch zentriert nutzt Desktopfläche stärker. Screenshots /tmp/text-width-*.png und /tmp/text-centered-*.png. JavaScript-Syntax beider Dateien geprüft.


### Zentrierung getrennt nach Layout

Nach Nutzerfeedback sind Ausrichtung mit Sidebar und ohne Sidebar ausdrücklich getrennte Entscheidungen. Die Option align=center zentriert die Inhaltsspalte jetzt ausschließlich bis zum bestehenden Sidebar-Breakpoint von 980px. Im Desktoplayout mit Sidebar bleibt der Inhalt am linken Rand des gepolsterten Hauptbereichs. Der Vergleichsschalter benennt den Geltungsbereich ausdrücklich. Textbreitenoptionen bleiben unabhängig. Keine neue Standardbreite oder Schriftgröße festgelegt.


### Abgestimmte Standarddarstellung der bevorzugten Projektseiten

Nach Auftrag des Nutzers ist die verbesserte Abstimmung nun Standard für review-subtle und review-photos auf den Projektseiten: Hauptbereich-Schriftgröße fließend von 16 bis 20 Pixeln per `clamp(1rem, .75rem + .5vw, 1.25rem)`, normale maximale Lesebreite 80ch statt 70ch. Bestehende Vergleichsoptionen 70/80/96ch/volle Breite überschreiben weiterhin die Breite gezielt. Der Designvergleich benennt den neuen Standard als „Abgestimmt (80ch)“. Startseiten-Typografie bleibt unverändert.

Ohne Sidebar (bis einschließlich 980px) sind Projektbeschreibung, Materialien und Navigation standardmäßig als gemeinsame Spalte zentriert. Seitliche Innenabstände reichen von 24 bis 48 Pixeln, statt im mittelbreiten Headerlayout pauschal 4em zu verwenden. Mit Sidebar bleibt die Spalte links im gepolsterten Hauptbereich. Keine JavaScript-Abfrage der Fensterhöhe oder Positionsberechnung; Layout und fließende Schrift werden ausschließlich per CSS geregelt. Der redundant gewordene Zentrierungsschalter im Vergleich entfällt.

Firefox-Prüfung Survival bei 390, 900, 981 und 1866 × 947, zusätzlich vollständige mobile Darstellung bei 390 × 1700, Bild-Anguilla bei 1280 × 947 und Studienartikel bei 900 × 1030. Keine Überlappungen; Materialien und Navigation haben dieselben Spaltenränder. Am Desktop und direkt oberhalb des Sidebar-Breakpoints bleiben beide Survival-Nachbarlinks vollständig sichtbar. Auf dem Handy füllt der Text den Bereich zwischen normalen Seitenabständen, längere Seiten scrollen regulär. Mittelbreite Ansicht nutzt eine großzügigere, symmetrisch platzierte Spalte; Desktop bleibt begrenzt und links angeordnet. Aufnahmen `/tmp/coordinated-*.png`. JavaScript-Syntax von Vergleich und Optionsskript geprüft. Reguläre Seiten und main.css unverändert.


### Navigation ohne Sidebar folgt dem Inhalt

Nach ausdrücklicher Zustimmung entfällt im Layout ohne Sidebar das Auffüllen der Fensterhöhe für die bevorzugten Projektseiten. Body-Mindesthöhe und Wachstum des Hauptbereichs sind dort aufgehoben; die Navigation hat margin-top:0, keine Mindesthöhe und folgt nach 1.5em Abstand mit Trennlinie und 1em Innenabstand. Desktopregeln bleiben erhalten. Firefox bei 900 × 1030 für Anguilla geprüft: Materialien, Navigation und Footer folgen ohne künstlichen Leerraum aufeinander. Screenshot `/tmp/mobile-natural-nav.png`.

Rücknavigation zur Diskussion: Die bevorzugten Headerlinks führen bereits direkt auf die jeweilige index-Vorschau ohne Sprungmarke. Vorschlag zur bewussten nächsten Entscheidung: einheitlich „Back to overview“ statt „Back to projects“, außerdem denselben Rücklink am freien linken Platz des ersten und freien rechten Platz des letzten Projekts. Noch nicht umgesetzt, da der Nutzer zunächst Abwägung und Benennung diskutieren möchte.


### Rückweg zur Übersicht bestätigt

Nach Zustimmung lautet der Header-/Sidebar-Rücklink auf allen zwölf bevorzugten Projektseiten „Back to overview“. Er führt weiterhin zur jeweiligen Übersicht ohne Sprungmarke. Beim ersten Projekt steht zusätzlich links unten „← Back to overview“, beim letzten rechts unten „Back to overview →“. Die tatsächlichen Nachbarlinks und die Projektreihenfolge bleiben erhalten; Übersichtsrücklinks werden nicht als prev/next ausgezeichnet.

Alle zwölf Headerziele und die vier neuen Endpunktlinks strukturell geprüft. Firefox-Sichtprüfung: erstes Projekt schlichte Variante bei 1866 × 947 und letztes Projekt Bildvariante bei 390 × 1600. Rücklinks sichtbar, keine Überlappungen; mobile Navigation folgt weiterhin direkt dem Inhalt. Aufnahmen `/tmp/overview-first-wide.png` und `/tmp/overview-last-small.png`. Ausschließlich Vergleichsseiten auf feature/design-review geändert.


### Hybrid-Halbkreis und neue Projektbilder

Auf Nutzerauftrag zwei separate Hybridseiten angelegt: review-hybrid-anguilla-search.html und review-hybrid-study-satisfaction.html. Sie erben die bevorzugte schlichte Darstellung, Typografie, Rücklinks und Navigation. Desktop: eine linke Kreishälfte sitzt am rechten Sidebar-Rand mittig im freien Bereich; Radius 120-180 Pixel je nach Breite. Keine Schrift über dem Bild. Unterhalb des Sidebar-Breakpoints verschwindet das dekorative Bild vollständig und der Header bleibt schlicht. Kein bildabhängiges JavaScript-Positionieren.

Anguilla verwendet die bestehende Lupe. Der Studienartikel verwendet zunächst Tabelle 4; mit visual=sport lässt sich stattdessen das neue Sportfoto im Halbkreis vergleichen. Der Designvergleich hat eine Hybridvariante und eine separate Bildwahl Tabelle/Sportfoto. Hybridseiten verlinken untereinander, zu übrigen Projekten über die bestehende schlichte Variante. Vergleichsparameter werden mitgeführt.

Für die vollständige Bildvariante des Studienartikels wurde ein Basketballfoto von Ludo Poiré aus dem mit university/college verschlagworteten Unsplash-Angebot gewählt. Es illustriert Sport/Hochschulkontext; die abgebildeten Personen werden nicht als Münsteraner Sportstudierende oder Studienteilnehmer bezeichnet. Frei nutzbar unter Unsplash License, Quelle geprüft 2026-10-11. Lokales Bild 1800px, dunkler CSS-Overlay und getrennte mobile Position. Der vorhandene Parallax-Code überschreibt Hintergrundpositionen; die neue projektbezogene Position wird deshalb gezielt per CSS priorisiert.

Brownian-Bildvariante: neue offen lizenzierte schematische Illustration von Andi Schmitt (Wikimedia Commons, CC BY-SA 4.0). Ein größeres Teilchen und kleinere Moleküle samt Bewegungspfeilen und Bahn sind darin klar unterscheidbar. Farben gedämpft, Hintergrund dunkel, Portrait-/Querformatrahmen angepasst; Original-SVG bleibt unter images/source erhalten. Sichtbarer Quellen-/Lizenzlink mit „adapted“ auf der Brownian-Vorschauseite. Abgeleitete SVGs ebenfalls CC BY-SA 4.0. Keine generative Bildbearbeitung, lediglich SVG-Farben und Rahmung. Detaillierte URLs, Lizenzen und Änderungen: images/source/design-review-image-sources.md. Frühere Partikelentwürfe bleiben erhalten.

Firefox-Prüfung: alle vier neuen Desktopdarstellungen bei 1866 × 947, Hybrid-Lupe zusätzlich bei 1280 × 720, Hybrid-Studienartikel ohne Bild bei 390 × 1500, Sportfoto und Brownian jeweils bei 900 × 1030 sowie 390 × 1500. Keine Überlappungen von Halbkreis und Titel/Credits; mobile Navigation bleibt im Inhaltsfluss. Erste Ellipsenverzerrung durch #header-Kindregel korrigiert. Desktop-Sportausschnitt nach Parallax-Abgleich korrigiert. Neue SVGs als XML, Options-/Hub-JavaScript auf Syntax und Hybrid-Navigationsziele auf vorhandene Dateien geprüft. Screenshots /tmp/hybrid-*.png, /tmp/photo-study-*.png, /tmp/photo-brownian-v2.png, /tmp/brownian-390.png. Reguläre Website und main.css unverändert; ausschließlich Feature-Branch.


### Vollständiger Hybridvergleich mit seitlichem Bild im schmalen Header

Hybrid auf Startseite und alle sechs Projekte erweitert. Alle Projektkarten, Rücklinks und Nachbarlinks bleiben innerhalb derselben Variante. Größerer Desktop-Halbkreis bis Radius 260px; CSS begrenzt ihn zusätzlich anhand der verfügbaren Höhe, um Titel und Credits freizulassen. Schmale Ansicht: Text links, rundes Bild rechts, 100-180px abhängig von der Breite. Kein Bild zwischen Untertitel und Rücklink und keine Textüberlagerung. Startseite behält das vorhandene persönliche Porträt; kein zusätzliches Projektbild neben der Einleitung. Exakte Bildwahl bleibt offen; bestehende Motive und Lizenzangaben übernommen.

Firefox-Sichtprüfung bei 1866×947 (größerer Halbkreis Anguilla), 1280×720 (Studienartikel Sportfoto), 390×1500 (seitliches Sportfoto) und 900×1030 (Brownian-Diagramm). Keine Überlappungen in diesen Ansichten. Alle lokalen Assets und Navigationsziele der sieben Hybridseiten geprüft. Vergleichshub erlaubt nun jede Hybridseite und verlinkt die drei vollständigen Startseiten direkt. Screenshots /tmp/hybrid-new-*.png. Nur Feature-Branch, reguläre Website unverändert.


### Zentrierter schmaler Header mit Eckbild und Rechteckvergleich

Auf Nutzerkorrektur bleibt der Text im schmalen Hybridheader vollständig zentriert. Das dekorative Bild sitzt unten rechts direkt am Header-Rand, mit einer abgerundeten inneren Kante. Reservierter unterer Abstand verhindert Überlagerung mit dem Rücklink, ohne Text seitlich einzurücken. Brownian verwendet nun object-fit cover und zusätzlichen Zoom statt contain, damit der rechteckige Gesamtrahmen der Illustration nicht sichtbar bleibt.

Zusätzliche vollständige Variante review-rectangle mit Startseite und sechs Projekten: rechteckiges Bild mit seitlichem Abstand im freien Desktop-Sidebarbereich. Sie behält Navigation, Bildwahlparameter, mobile Eckdarstellung und Quellenangaben der Hybridversion. Alle sieben Seiten verlinken innerhalb der Rechteckvariante. Vergleichshub und Parameterweitergabe erweitert.

Firefox-Screenshots: 390×1500 zentrierter Anguilla-Header mit Eckbild, 1866×947 vergrößerter Brownian-Ausschnitt, 1280×720 rechteckiges Anguilla-Bild. Keine Textüberlagerungen in den geprüften Ansichten. Lokale Assets und Navigationsziele aller Rechteckseiten sowie JavaScript-Syntax geprüft. Exakte Bilder weiterhin vorläufig. Aufnahmen /tmp/hybrid-corner.png, /tmp/hybrid-zoom.png und /tmp/hybrid-rectangle.png. Änderungen ausschließlich auf feature/design-review.
