# Gespeicherte Designvarianten

Branch: `design/alternatives`. Einstieg: `design-review.html`. Alle Varianten einschließlich früherer Experimente bleiben erhalten.

## Vier aktuelle Vergleichsvarianten

| Name im Menü | Dateipräfix | Bedeutung |
| --- | --- | --- |
| Schlicht mit dezenter Navigation | `review-subtle-` | Einfarbige Sidebar, kein dekoratives Projektbild; ruhige Navigation unter dem Inhalt. |
| Durchgehende Bildhintergründe | `review-photos-` | Bilder über die gesamte Sidebar bzw. den schmalen Header. |
| Schlichte Sidebar mit Halbkreisbildern | `review-semicircle-` | Einfarbige Sidebar mit Halbkreisbild; schmaler Header mit rundem Bildsegment am Rand. |
| Schlichte Sidebar mit Rechteckbildern | `review-rectangle-` | Einfarbige Sidebar mit Bild über die gesamte Breite; schmaler Header mit geradem Bildstreifen. |

Jeweils `index.html` nach dem Präfix führt zur vollständigen Übersicht. Beispiel: `review-semicircle-index.html`. Diese Variante ist die Grundlage der bereinigten Website auf `feature/semicircle-layout`. Die alten `review-hybrid-*.html` sind nur noch Weiterleitungen; Queryparameter bleiben dabei erhalten.

`subtle` beschreibt die zurückhaltende Darstellung und Navigation; `photos` die flächigen Bildhintergründe. `semicircle` und `rectangle` benennen die Bildform. Die gemeinsame CSS-Klasse `review-inset-image` und `.inset-image` beschreiben eingefügte Bildausschnitte unabhängig von ihrer Form.

## Frühere Experimente

| Dateipräfix | Bedeutung |
| --- | --- |
| `review-plain-` | Früherer Stand der schlichten Sidebar, vor den zuletzt abgestimmten Abständen und Inhalten. |
| `review-list-` | Vollständige Projektliste in der Sidebar. |
| `review-row-` | Previous/Next ohne Projekttitel, einzeilig in der Sidebar. |
| `review-sidebar-` | Previous/Next samt Projekttiteln in der Sidebar. |
| `review-particles-` | Frühe Brownian-Partikelillustration, kein vollständiges aktuelles Website-Design. |
| `preview-uniform-plain-` / `preview-uniform-pattern-` | Frühere einheitliche Sidebar mit bzw. ohne Muster. |
| Übrige `preview-*` | Einzelversuche für Footer, Kontaktreihenfolge, Titel, Bilder und Tabellen; im Dateinamen beschrieben. |

Historische Varianten müssen nicht dieselben sechs Projekte oder letzten Textstände enthalten. Ihre ursprünglichen Dateinamen bleiben für die Nachvollziehbarkeit erhalten; das Auswahlmenü nennt ihre konkrete Funktion.

## Zusammenhang mit den Branches

- `design/alternatives`: vollständiger, benannter Vergleichsstand.
- `feature/design-review`: vorheriger Arbeitsstand; wird nicht in die gewählte Website gemergt.
- `feature/design-comparisons`: noch frühere Sicherung.
- `feature/semicircle-layout`: bereinigte gewählte Website mit normalen URLs, ohne Vergleichsparameter.
