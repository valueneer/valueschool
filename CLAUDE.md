# Value School — Landing Page

## Projekt
Landing Page für **Value School** (value-school.de) — ein gemeinnütziges Wertebildungsprogramm für Schulen.
Gründer: **Hendrik** (hendrik@valueverse.de), Mitgründer: **Sebastian**.

## Markenstruktur
- **Valueverse** — die Methode/Plattform von Hendrik (valueverse.de)
- **Valueneers** — die Spielemarke (Kartenspiel für Wertebildung)
- **Value School** — die gemeinnützige Schulinitiative (dieses Projekt)
- **Bizzheroes** — alter Markenname, wird nicht mehr verwendet

## Technik
- **Einzige Datei**: `valueschool.html` (wird auch als `index.html` kopiert für Netlify)
- **Stack**: React 18 + Babel (in-browser), kein Build-Schritt
- **Base64-Bilder** in separatem `<script>`-Tag (vor dem Babel-Block, um 500KB-Limit zu umgehen)
- **CSS**: Inline-Styles als React-Objekte
- **Fonts**: Bangers (Headlines), Outfit + DM Sans (Body)
- **Farben**: BLUE=#2E2D8E, BLUE_DK=#1C1B5E, PINK=#E91E8C, CYAN=#00BCD4, GREEN=#7CC142, ORANGE=#F7941D

## Hosting & Deployment
- **GitHub**: github.com/valueneer/valueschool (Branch: main)
- **Hosting**: Netlify (steady-speculoos-56c556), auto-deploy bei Push
- **Domain**: value-school.de via IONOS (A-Record → 75.2.60.5, CNAME www → Netlify)
- **Deploy**: `deploy.bat` ausführen (pull → add → commit → push)
- **Netlify Forms**: Hidden HTML-Form + React fetch POST handler für Kontaktformular

## Seitenstruktur (aktuell)
1. NAV (schwarz, fixed)
2. HERO (Hintergrundbild hero.jpg, 80vh, Trigger-Chips, Headline, CTA-Buttons)
3. WARUM DAS JETZT ZÄHLT — Mission (3 Karten: Resilienz, Mentale Gesundheit, Demokratie)
4. WAS SCHULEN HERAUSFORDERT (ImgBox + 6 Challenge-Karten + FactGroup)
5. WARUM WERTE SCHULE STÄRKT (ImgBox + Content + FactGroup)
6. WAS DAS PROJEKT BEWIRKT (ImgBox + 6 Effekt-Karten + FactGroup)
7. VISUAL BREAK ("Wer sich kennt, steht sicher")
8. MANIFEST (dunkelblau, "Unsere Überzeugung")
9. UNSERE STORY / VALUEVERSE (Methode + Marken + Value School)
10. 5 MODULE (5 farbige Modulkarten)
11. PROFESSIONELLE UNTERSTÜTZUNG (2-spaltig: Text/USPs/Gründer/Team)
12. DAS MACHT ES BESONDERS (ImgBox + 6 USP-Punkte + FactGroup)
13. WERTETEST TEASER (pink/orange Gradient, CTA)
14. FÖRDERMITTEL (grüner Gradient)
15. KONTAKT (Calendly-Platzhalter + Formular)
16. FOOTER
17. FLOATING WERTETEST CTA (fixed unten rechts)

## Wichtige Komponenten
- **ImgBox**: Vollbild-Bild mit Gradient-Overlay, Kicker/Title/Quote/Tag-Props
- **Fact**: Kompakte Statistik-Karte mit farbigem Seitenstreifen
- **FactGroup**: Dunkler Container für wissenschaftliche Belege

## Bekannte Probleme & offene Aufgaben
- [ ] Calendly-URL: Platzhalter muss durch echte URL ersetzt werden
- [ ] Mobile-Check: Responsiveness prüfen und optimieren
- [ ] Marketing-Review: Gesamte Seite final durchscannen
- [ ] Netlify Forms testen: Prüfen ob Submissions ankommen
- [ ] index.html: Nach Änderungen an valueschool.html immer auch index.html aktualisieren (Kopie)

## Arbeitsweise mit Hendrik
- Sprache: Deutsch, duzen, direkt
- ADHS: Ein Schritt nach dem anderen, max 2-3 Aufgaben pro Woche
- Entscheiden und führen, nicht ständig nach Optionen fragen
- Wenn er abschweift: Stopp sagen
- Claude ist Accountability-Partner UND Marketing-Experte
- Tippfehler kommen von Windows-Diktierfunktion
