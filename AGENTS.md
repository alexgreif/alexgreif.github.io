# Arbeitsweise im Website-Repository

## Branches und Pull Requests

- `master` enthält die veröffentlichte Website. Änderungen grundsätzlich auf einem thematischen Arbeitsbranch vornehmen; nicht direkt auf `master` bearbeiten, committen oder pushen. Abweichungen nur auf ausdrücklichen Nutzerauftrag.
- Vor der ersten Änderung Git-Status, aktuellen Branch und Remote-Stand prüfen. Für neue Arbeiten einen passend benannten Branch vom aktuellen `origin/master` erstellen. Einen vorhandenen Arbeitsbranch weiterverwenden, wenn die Änderungen zum vereinbarten Thema passen. Fremde oder parallel bearbeitete Änderungen nicht ungeprüft übernehmen.
- Zusammengehörige Änderungen dürfen in einem Branch und Pull Request gebündelt werden. Offene Aufgaben sind kein pauschaler Auftrag, weitere Themen mitzuerledigen.
- Nach den passenden Prüfungen lokal committen, den Arbeitsbranch pushen und einen Pull Request gegen `master` erstellen, soweit diese Schritte beauftragt sind. Bereits erteilte Autorisierung gilt weiter; keine zusätzliche Bestätigung allein wegen dieser Datei verlangen.
- Push des Arbeitsbranches und Erstellung eines Pull Requests veröffentlichen die Produktionsfassung noch nicht. Merge nach `master` beziehungsweise Veröffentlichung sind eigene Schritte und erfolgen nur auf Nutzerauftrag. Keine eigenmächtige Zusammenführung oder direkte Veröffentlichung.
- Falls versehentlich auf dem lokalen `master` committet wurde, die Änderungen zuerst auf einem Arbeitsbranch sichern. Vor einer Korrektur prüfen, ob der Commit bereits gepusht wurde; keinen Commit verlieren und keine fremde Historie überschreiben.

## Prüfung und Dokumentation

- Einrichtung und Prüfkommandos stehen in `README.md`, Aufgaben und Entscheidungen in `TODO.md`. Historische Übergaben sind keine aktuellen Arbeitsaufträge.
- Inhalte und Layout im vereinbarten Umfang prüfen. Nicht ausgeführte Browser-/Geräteprüfungen ausdrücklich als offen benennen.
- Im Abschluss Branch, Commit-/PR-Stand und wesentliche Prüfergebnisse nennen; klar zwischen lokal vorbereitet, gepusht und veröffentlicht unterscheiden.
