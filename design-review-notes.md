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
