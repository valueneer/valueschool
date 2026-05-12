# Value School — Vision

> Das Nordstern-Dokument. Ändert sich kaum. Hier liest sich neuer Claude rein, um zu verstehen WAS wir machen und WARUM.

---

## Was wir bauen

**Value School** ist ein gemeinnütziges Wertebildungsprogramm für Schulen. Wir helfen Schulen und Eltern, junge Menschen zu ihren Werten zu führen — damit sie wissen, wer sie sind und wofür sie stehen.

Spielerisch. Wissenschaftlich fundiert. Gemeinnützig.

Domain: **value-school.de**

## Wer wir sind

- **Hendrik Martens** (Gründer) — kommt aus Storytelling, ehemals Werbung. Heute systemischer Business Coach und NLP Master Coach. Hat über die Jahre das Werte-System **Valueverse** entwickelt. Mit den **Valueneers** bringen wir es zu Menschen mit wertebewusstem Lebensstil. Mit den **Bizzheroes** zu Unternehmen.
- **Sebastian Thamm** (Mitgründer) — kommt vom Unternehmensaufbau. Hat **TeamEscape** als Franchise mit aufgebaut. Bringt Erlebnis-Architektur und Skalierungs-Können ein.

## Markenarchitektur

```
Valueverse (Methode/Werte-System)
├── Valueneers     → Spiele/Tools für Menschen (wertebewusster Lebensstil)
├── Bizzheroes    → Unternehmen
└── Value School  → Schulen   ← unser Fokus hier
```

## Zielgruppen (in dieser Reihenfolge)

1. **Schulleiter:innen** — die Entscheider:innen. Wenig Zeit, oft schon viele Programme im Haus. Wollen wissen: Was kostet's, was bringt's, wieviel Aufwand für meine Lehrer:innen?
2. **Lehrkräfte** — die Multiplikatoren. Empfehlen es der Schulleitung. Wollen wissen: Funktioniert das im Klassenraum? Macht es mir mehr oder weniger Arbeit?
3. **Eltern** — interessierte Eltern, die das in ihre Schule bringen wollen.
4. **Förderer / Stiftungen** — finanzielle Unterstützer.

## Erfolgskriterien

**Phase 1 (jetzt):** Landingpage konvertiert Schulleiter:innen zu Erstgesprächen. Conversion-Ziel: Erstgespräch buchen (Calendly).

**Phase 2 (mittelfristig):** 5–10 Pilot-Schulen, die Value School durchlaufen, dokumentierte Ergebnisse.

**Phase 3 (lang):** Skalierung auf 50+ Schulen pro Schuljahr, Förder-Strukturen etabliert.

## Warum wir das machen

Wir fühlen uns moralisch verpflichtet, mit unseren Ressourcen einen Beitrag zu leisten — für eine wertvollere Welt. Was bei jungen Menschen anfängt, trägt später durch ein ganzes Leben.

## Was Value School NICHT ist

- Kein Experiment. Die Methode ist über Jahre mit Erwachsenen erprobt (Bizzheroes, Valueneers).
- Kein Frontalunterricht. Werte werden erlebt, nicht doziert.
- Kein religiöses/ideologisches Programm. Schwartz-Wertetheorie als wissenschaftliche Grundlage.
- Keine Belehrung. Wir machen aus Veränderung ein Abenteuer.

## Tonalität (für alle Texte)

- **Deutsch, duzen, direkt.**
- **Erzählerisch, kein KI-Stakkato.** Mini-Szenen statt Schlagwort-Trios. Atemzeichen statt Aufzählungs-Reflex.
- **Nicht predigen.** Schulleiter:innen wissen schon, dass Werte wichtig sind. Wir zeigen, wie wir's machen.
- **Marketing-fundiert, aber menschlich.** Kein Corporate-Sprech, kein Bullshit-Bingo.

## Tech-Stack (Kurzfassung)

- `valueschool.html` + `index.html` (identische Kopie für Netlify) — React 18 + Babel in-browser
- Unterseiten als plain HTML/CSS (`/wer-wir-sind/`, `/programm/`, `/minitest/`, `/kurztest-werte-mehr-erfahren/`, `/double-opt-in-accept/`, `/finanzierung-schule-check/`)
- Hosting: Netlify, Domain via IONOS
- Git: github.com/valueneer/valueschool (main)
- Deploy: `deploy.bat` oder GitHub Desktop Push → Netlify Auto-Deploy

Details siehe `CLAUDE.md`.
