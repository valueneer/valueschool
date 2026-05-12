# Value School — Session-Log

> Jede Session am Ende: was gemacht, was offen, wo weitermachen. Reverse chronological — neuestes oben.

---

## 2026-05-12 (Session 3) — Hero-Video + Bilder eingebaut

**Gemacht:**
- 9 Mood-Bilder gesichtet (alle aus Workshop-Kontext mit Hendrik)
- Web-Versionen erzeugt: IMG_0010/9937/9966/9979/9987 als *_web.jpg in /bilder/ (~220-310 KB pro Bild, statt 1.6-4.6 MB Original)
- Video web-optimiert: moodvideos_web.mp4 (6.4 MB statt 13.7 MB, mute, h264, faststart)
- **Hero**: hero.jpg ersetzt durch Background-Video moodvideos_web.mp4 (autoplay/loop/mute/playsInline + Poster-Fallback hero.jpg). Gradient leicht reduziert für mehr Video-Sichtbarkeit. Content-Z-Index auf 2 hochgezogen.
- **Sek 4 Wirkung**: ImgBox-Base64 ersetzt durch /bilder/IMG_9966_web.jpg (Wertespiel-Karten auf Tisch)
- **Sek 6 Trust**: neues Mood-Bild /bilder/IMG_0010_web.jpg (Hendrik am Board mit Werte-Cloud) zwischen Founder-Teaser und Stats eingefügt
- Dateigröße valueschool.html + index.html: 526 KB → 455 KB (Base64 raus)
- Backups: *.pre-images
- /wer-wir-sind/ bewusst NICHT angefasst — Hendrik plant dort Anpassungen zur Founder-Story-Konsistenz

**Open für nächste Session (Hendrik-Priorität):**
Founder-Story-Konsistenz zwischen Hauptseite-Trust, Founder-Teaser und /wer-wir-sind/ aufeinander aufbauen. Hendrik macht Vorarbeiten, dann gemeinsam Feinschliff. **Vor Änderungen Kontext einholen.**

**Wo weitermachen:**
Hendrik prüft Live-Ergebnis (Video + Bilder). Falls passt: Push. Danach Founder-Konsistenz angehen.

---

## 2026-05-12 (Session 2) — Funnel-Schnitt versucht, zurückgerollt

**Gemacht:**
- Frischer Audit aller HTML-Seiten durchgezogen (Hauptseite + 5 Unterseiten + 2 verwaiste)
- Funnel-Status der Unterseiten mit Hendrik geklärt: `/wertetest/` bleibt (eigene LP kommt, Schul-Einsatz), `/finanzierung-schule-check/` bleibt (nicht löschen, nicht jetzt verlinken), `/kurztest-werte-mehr-erfahren/` weiter ungenutzt
- Auf der Hauptseite drei Predigt-Sektionen rausgeschnitten (Sek 2 Mission, Sek 3 Challenges, Sek 5 Manifest) → Hero → Wirkung → Trust → Kontakt
- **Hendrik fand das Ergebnis schlechter, komplett rückgängig gemacht.** Backups `*.pre-fusion` waren da, Rollback hat funktioniert.

**Lessons:**
- Radikales Streichen ganzer Sektionen war zu grob. Substanz, Bildwelt und Studien-Belege geben der Seite Gewicht.
- Beim nächsten Versuch: pro Element/Karte entscheiden, nicht pro Sektion. Mit Hendrik vorher einzeln durchgehen.
- Funnel-Big-Picture-Check allein reicht nicht — visuelles Gewicht der Sektionen muss mitgedacht werden, nicht nur Wortzahl.

**Wo weitermachen:**
WEEK Aufgabe 1 neu denken: behutsamer Ansatz, kein Komplett-Rauswurf. Erst nach Klärung mit Hendrik, welche Karten/Elemente er als doppelt sieht.

---

## 2026-05-12 (Session 1) — Trust-Sektion + Audit + Projekt-Setup

**Gemacht:**
- Founder-Story mehrfach iteriert: Hendriks Career-Arc, Sebastian organisch eingewoben, "wertvollste Kombination"
- Trust-Sektion auf Hauptseite und /wer-wir-sind/ aufgeteilt:
  - **Hauptseite:** 1-Absatz-Teaser, Stats (70k/250k/10k), Logos full-width ("sich ihrer Werte bewusst"), CTA "Mehr über Hendrik und Sebastian →"
  - **/wer-wir-sind/:** volle 4-Absatz-Story ("Wie alles zusammenkam"), Founder-Bios mit Gesichtern (Detail), mittig formatiert, Logos rausgenommen (keine Dopplung)
- Dopplungen entfernt (Story-Bogen + Founder-Box doppelt → fusioniert → split)
- Schulleiter-Audit gemacht (siehe OPEN_QUESTIONS für Lücken)
- **Projekt-Setup `.project/` eingeführt** — VISION, ROADMAP, LOG, WEEK, OPEN_QUESTIONS

**Letzter Commit:** `c12fc68` — Hauptseite Gesichter raus, /wer-wir-sind/ Logos raus, Text mittig

**Status push:** 3+ Commits liegen lokal, Hendrik muss in GitHub Desktop pushen.

**Wo weitermachen:**
Neuer Chat öffnen, `.project/` lesen, dann **WEEK.md** abarbeiten — Funnel-Umbau Phase 1.

---

## Vor dieser Session (Zusammenfassung aus Memory)

- Sebastians 1-Min-Wertetest-Feedback umgesetzt (Brevo Werte-Namen, Hero-Wording, DOI entrümpelt, TEASE universell)
- 3. Case (Jonas, 13) zur Mehr-Erfahren-Page hinzugefügt
- /wer-wir-sind/ als Unterseite gebaut
- 6 Partner-Logos integriert
- Hendrik + Sebastian Fotos eingebaut

---

## Stil-Lessons aus dieser Session (für künftige Sessions wichtig)

1. **Vor strukturellen Änderungen: Big-Picture-Check.** Wo bin ich im Funnel? Was steht schon? Wird's doppelt? — Wenn ich das nicht mache, baue ich Müll.
2. **Trust-Elemente dürfen wiederholt werden, Content nicht.** Gesichter und Logos sind Trust → können auf Hauptseite + Unterseite. Texte sind Content → niemals doppelt.
3. **Hendriks Story-Stil ist erzählerisch, nicht stakkato.** Mini-Szenen, Atemzeichen, "Mensch oder Regel? Harmonie oder Klartext?" ist TABU.
4. **Hendrik hat ADHS.** Max 2-3 Aufgaben pro Woche. Eine Sache nach der anderen. Entscheiden, nicht Optionen-Buffet anbieten.
