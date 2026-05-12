# Value School — Landing Page

## ⚠️ Erste Lese-Pflicht für neue Sessions

**Bevor du irgendetwas tust, lies in dieser Reihenfolge:**

1. `.project/VISION.md` — Was wir bauen, für wen, warum
2. `.project/ROADMAP.md` — Wo wir in welcher Phase stehen
3. `.project/WEEK.md` — Was diese Woche dran ist
4. `.project/LOG.md` — Wo wir letzte Session aufgehört haben
5. `.project/OPEN_QUESTIONS.md` — Was hängt, was Hendrik klären muss

Erst dann arbeiten. Das verhindert Drift und Dopplungen.

---

## Projekt-Kurzfassung

Landing Page für **Value School** (value-school.de) — gemeinnütziges Wertebildungsprogramm für Schulen.
Gründer: **Hendrik** (hendrik@valueverse.de), Mitgründer: **Sebastian Thamm**.

Markenstruktur, Vision und Tonalität → `.project/VISION.md`.

## Technik

- **Hauptseite**: `valueschool.html` UND `index.html` (identische Kopien — beide bei jeder Änderung aktualisieren)
- **Stack**: React 18 + Babel (in-browser), kein Build-Schritt
- **Base64-Bilder** in separatem `<script>`-Tag (vor dem Babel-Block, um 500KB-Limit zu umgehen)
- **CSS**: Inline-Styles als React-Objekte
- **Fonts**: Bangers (Headlines), Outfit + DM Sans (Body)
- **Farben**: BLUE=#2E2D8E, BLUE_DK=#1C1B5E, PINK=#E91E8C, CYAN=#00BCD4, GREEN=#7CC142, ORANGE=#F7941D

**Unterseiten** (alle plain HTML/CSS, kein React):
- `/wer-wir-sind/` — Founder-Story, Detail-Bios, USPs
- `/programm/` — die 5 Module (aktuell NICHT im Hauptfunnel verlinkt → siehe WEEK)
- `/minitest/` — 1-Min-Wertetest mit Brevo-Anbindung
- `/kurztest-werte-mehr-erfahren/` — Cases (Lukas, Mia, Jonas)
- `/double-opt-in-accept/` — DOI-Bestätigungsseite
- `/finanzierung-schule-check/` — Finanzierungs-Check

## Hosting & Deployment

- **GitHub**: github.com/valueneer/valueschool (Branch: main)
- **Hosting**: Netlify (steady-speculoos-56c556), auto-deploy bei Push
- **Domain**: value-school.de via IONOS (A-Record → 75.2.60.5, CNAME www → Netlify)
- **Deploy**: GitHub Desktop Push → Netlify zieht in 30–60 Sek nach. Alternativ `deploy.bat`.
- **Netlify Forms**: Hidden HTML-Form + React fetch POST handler für Kontaktformular

## Hauptseite — aktuelle Sektionen (Stand 12.05.2026)

1. **NAV** (schwarz, fixed)
2. **HERO** — "Werte bewegen Schule" + 2 CTAs (1-Min-Test, Erstgespräch)
3. **WARUM DAS JETZT ZÄHLT** — 3 Mission-Karten (Resilienz, Mental Health, Demokratie)
4. **WAS SCHULEN HERAUSFORDERT** — Challenge-Karten + Studien
5. **WAS DAS PROJEKT BEWIRKT** — Effekt-Karten + Studien
6. **MANIFEST + VISUAL** — "Unsere Überzeugung"
7. **WARUM WIR DAS KÖNNEN** — Trust-Sektion mit Founder-Teaser, Stats, Logos, CTA zu /wer-wir-sind/
8. **KONTAKT** — Calendly + Formular
9. **FOOTER**
10. **FLOATING MINITEST CTA** (fixed)

**Bekannte Lücken** (Audit 12.05.2026):
- Sektionen 3–6 sind alle "Warum"-Predigt → für Schulleiter:innen redundant
- Programm-Sektion (5 Module) fehlt auf Hauptseite — wird in WEEK.md adressiert
- Keine Kosten/Aufwand-Sektion
- Keine Schul-Referenz

## Komponenten (in `valueschool.html`)

- **ImgBox**: Vollbild-Bild mit Gradient-Overlay, Kicker/Title/Quote/Tag-Props
- **Fact**: Kompakte Statistik-Karte mit farbigem Seitenstreifen
- **FactGroup**: Dunkler Container für wissenschaftliche Belege
- **FadeIn**: Animations-Wrapper
- **Starburst**: dekoratives SVG für Section-Backgrounds

## Arbeitsweise mit Hendrik

- **Sprache**: Deutsch, duzen, direkt.
- **ADHS**: Ein Schritt nach dem anderen, max 2–3 Aufgaben pro Woche.
- **Führen statt fragen**: Entscheiden und vorschlagen, kein Optionen-Buffet.
- **Wenn er abschweift**: Stopp sagen, zur WEEK.md zurückholen.
- **Tippfehler** kommen von Windows-Diktierfunktion — nicht drauf reagieren.

## Stil-Prinzipien für alle Texte

- **Kein KI-Stakkato.** Erzählerisch mit Atemzeichen, Mini-Szenen statt Schlagwort-Trios.
- **Tabu:** Formulierungen wie "Mensch oder Regel? Harmonie oder Klartext?" — das ist KI-Reflex und stört.
- **Trust-Elemente** (Gesichter, Logos, Stats) dürfen auf mehreren Seiten erscheinen.
- **Content** (Texte, Geschichten) gehört auf EINE Seite. Niemals doppelt.
- Hauptseite = Teaser. Unterseite = Tiefe.

## Routine

**Session-Start:** `.project/`-Dateien lesen, Status zusammenfassen, dann vorschlagen womit weitermachen.

**Session-Ende:** LOG.md updaten (was gemacht, wo weitermachen), ggf. WEEK.md Haken setzen, ggf. OPEN_QUESTIONS pflegen, committen.

**Vor strukturellen Eingriffen:** Funnel-Big-Picture prüfen. Was steht schon? Wird's doppelt? Welche Sektionen sind betroffen?
