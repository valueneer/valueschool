# Diese Woche — KW 20 / 2026

> **Max 2–3 Aufgaben.** Wenn neue Ideen aufkommen → in OPEN_QUESTIONS parken, nicht hier reindrücken.

---

## 🎯 Fokus dieser Woche

**Funnel-Reparatur: Schulleiter:in soll in <2 Min verstehen, was Value School ist, kostet und bringt.**

---

## ⚠️ Bevor Claude loslegt

**Erst `OPEN_QUESTIONS.md` mit Hendrik durchgehen.** Mehrere Aufgaben unten warten auf Hendrik-Input (Kosten, Klassenstufen, Tage, Pilot-Schulen, Sebastian-Bio). Ohne diese Antworten können Aufgaben 2 und 3 nicht ehrlich gebaut werden — sonst landen wir wieder bei Annahmen, die korrigiert werden müssen.

**Reihenfolge:**
1. Lagebesprechung geben (Status aus LOG.md)
2. Open Questions auflisten und Hendrik fragen, welche er jetzt schnell klären kann
3. Erst danach: Aufgabe wählen, die nicht blockiert ist (Aufgabe 1 ist nicht blockiert)

---

## Aufgabe 1: Predigt-Sektionen fusionieren

**Was:** Die drei Sektionen "Warum das jetzt zählt", "Was Schulen herausfordert", "Was das Projekt bewirkt" zu **EINER** kompakten Sektion fusionieren. Manifest evtl. ganz raus oder als Mini-Quote integrieren.

**Warum:** Schulleiter:innen wissen, dass Werte wichtig sind. Vier Sektionen "Warum"-Predigt → sie scrollen weg, bevor das Programm kommt.

**Status:** 🔄 zurückgesetzt am 2026-05-12. Erster Schnitt-Versuch (Sek 2, 3, 5 komplett raus) hat Hendrik nicht überzeugt — Seite wirkte schlechter. Neuer Ansatz nötig: nicht radikal streichen, sondern behutsamer fusionieren, Substanz erhalten, Bildwelt erhalten.

**Nächster Versuch:** Vorher mit Hendrik durchgehen, WAS aus den Sektionen funktioniert (Bilder, Karten, Studien) und WAS doppelt — pro Karte/Element entscheiden, nicht ganze Sektionen kippen.

---

## Aufgabe 2: Programm auf Hauptseite holen

**Was:** Die 5 Module aus `/programm/` als Sektion in die Hauptseite bringen — direkt **nach** der fusionierten "Warum"-Sektion. Mit klarem CTA "Programm im Detail →" zur Unterseite.

**Warum:** Aktuell hängt die `/programm/`-Seite komplett am Funnel vorbei. Schulleiter:in scrollt durch und erfährt nie, was wir konkret machen.

**Definition of Done:**
- 5 Modulkarten sichtbar (Visual + Titel + 1 Satz pro Modul)
- Klassenstufen-Hinweis ("für Klasse X–Y")
- Dauer-Hinweis pro Modul (Tage/Stunden)
- CTA zur Detail-Seite

**Voraussetzung:** Hendrik liefert Klassenstufen + Tage-Angaben, falls nicht in `/programm/` schon enthalten.

**Status:** 🔒 blockiert — wartet auf Hendrik-Input (siehe OPEN_QUESTIONS: Klassenstufen, Tage pro Modul)

---

## Aufgabe 3 (Stretch): Kosten/Aufwand-Block

**Nur wenn Aufgabe 1+2 fertig sind und Hendrik die Daten geliefert hat.**

**Was:** Block mit klarer Antwort auf "Was kostet uns das, in Geld und Lehrerstunden?". Plus Förder-Hinweis.

**Warum:** Wichtigste Schulleiter-Frage. Wird aktuell nicht beantwortet.

**Status:** 🔒 blockiert — wartet auf Hendriks Input zu Kosten-Modell + Förderung

---

## Aufgabe 4 (neu seit 12.05. Abend): Founder-Story-Konsistenz

**Was:** Bogen zwischen Hauptseite-Trust-Sektion (Founder-Teaser) und `/wer-wir-sind/`-Detail-Seite bewusst gestalten — aktuell überlappen sich Inhalte und USP-Karten zu stark. Hendrik macht zuerst Vorarbeiten, dann gemeinsam Feinschliff.

**Wichtig:** **Vor jeder Änderung Kontext einholen.** Hendrik bietet aktiv Kontext an, lieber zu viel nachfragen als wieder ohne Strategie schneiden. Auslöser war das gescheiterte radikale Streichen aus Aufgabe 1 — daraus die Lektion.

**Status:** ⏳ wartet auf Hendriks Vorarbeit

---

## ✅ Erledigt in dieser Woche

- Trust-Sektion mit Founder-Story sauber aufgeteilt (Hauptseite Teaser, /wer-wir-sind/ volle Story)
- Logo-Strip full-width, Headline "sich ihrer Werte bewusst"
- `.project/` Setup eingeführt
- **Hero-Video + Mood-Bilder** eingebaut (Bilder IMG_0010 in Sek 6 Trust, IMG_9966 in Sek 4 Wirkung)
- **Hero-Polish:** Gradient mit Lila-Stich (0.50/0.62/0.66), Blur 5px aufs Video, autoplay/loop/mute, läuft auf Desktop und Mobile
- **Performance-Komplettoptimierung** (Session 6):
  - HTML 526 → 216 KB (Base64 raus, 226 KB extrahiert in externe Files)
  - Video 6.3 MB → 1.7 MB (kleinere Auflösung + CRF 32, Blur macht Quality-Loss unsichtbar)
  - WebP-Versionen für alle Bilder
  - PlayTheHype-Logo 97 KB → 26 KB
  - Loading-Hints (preconnect, preload Hero, lazy-loading)
  - netlify.toml mit Cache-Headers (Bilder 1 Jahr immutable, HTML always-fresh)
  - Initial Pageload: ~7.1 MB → ~2.1 MB (-71%)

---

## 🛑 Nicht diese Woche

(damit ich nicht abdrifte)

- Wertetest-Inhalts-Review
- Sebastian-Bio-Finalisierung (wartet auf Hendriks Input)
- /finanzierung-schule-check/ in Hauptfunnel einbinden
- Unterseiten-Performance (haben eigene Assets, separat optimieren)

---

## ⚠️ Lektionen aus dieser Woche (für Laptop-Claude wichtig)

1. **Keine radikalen Section-Schnitte.** Aufgabe 1 wurde zurückgerollt, weil das komplette Streichen ganzer Sektionen die Leseführung zerstört hat. Bildwelt, Studien und visueller Rhythmus tragen die Seite — Predigt-Reduktion muss pro Karte/Element passieren, nicht pro Sektion.
2. **Vor strukturellen Eingriffen: Kontext einholen.** Hendrik bietet aktiv Kontext an. Lieber kurz fragen als unstrategisch loslegen.
3. **Bei Audits: Strategie vor Detail.** Big-Picture-Funnel-Check zuerst, danach Detail-Pass.
4. **Hendrik nutzt Windows-Diktierfunktion.** Tippfehler ignorieren.
