# Value School — Session-Log

> Jede Session am Ende: was gemacht, was offen, wo weitermachen. Reverse chronological — neuestes oben.

---

## 2026-08-19 (Session 7) — Repo-Identität geklärt, Schreibzugriff steht

**Kein Code angefasst.** Diese Session hat nur aufgeräumt, wo gearbeitet wird.

**Befund:** Eine Standnotiz außerhalb des Repos führte den Pfad `C:\\Users\\hendr\\claude\\landingpage\\`
als Repo-Ort. Falsch. Das ist eine tote Altkopie vom 05.05.2026 (HEAD `6ad5c9d5`), in der seit Mai keiner
mehr war. Das gepflegte Repo ist `C:\\Users\\hendr\\OneDrive\\Dokumente\\GitHub\\valueschool\\`.

**Sync-Stand geprüft:** lokal `refs/heads/main` = `74a703d2` = der Commit, den Netlify am 16.07.2026 als
Deploy `6a5881e87a0ea4000851a7a5` veröffentlicht hat. Fetch am 19.08. brachte nichts Neues.
**Lokal = GitHub = live.** Nichts zu reparieren.

**Wie der Fehler auffiel:** Nach einem Fetch in GitHub Desktop blieb `FETCH_HEAD` in der Altkopie
unverändert. Also zeigte GitHub Desktop woanders hin. "Show in Explorer" hat den echten Pfad geliefert.
Merksatz: wo ein Repo liegt, sagt GitHub Desktop, nicht eine Notiz.

**Arbeitsumgebung:** Der Ordner `OneDrive\\Dokumente\\GitHub` ist jetzt dauerhaft als Cowork-Ordner
verbunden. Lesen und Schreiben im Repo funktioniert (dieser Eintrag ist der Schreibtest). Commit und Push
macht Hendrik in GitHub Desktop, das kann Cowork nicht auslösen.

**Diese Log-Datei war seit 12.05.2026 tot,** obwohl weitergearbeitet wurde: `wertetest/studie/` kam mit dem
Juli-Deploy dazu, `qr_bonn_studie.html` am 07.08. Beides ist hier nie dokumentiert worden. Ab jetzt wieder
am Session-Ende pflegen.

**Offen aus dieser Session:**
- `.project/WEEK.md` steht auf KW 20 (Mai). Fokus bestätigen oder neu setzen, bevor gebaut wird.
- Altkopie `C:\\Users\\hendr\\claude\\landingpage\\` wegräumen, sonst tappt der nächste wieder rein.
- Sicherheit: in `landingpage\\.git\\config` steht ein GitHub-Token im Klartext. Widerrufen und neu ausstellen.

### Zweiter Teil der Session — Minitest aus dem Funnel genommen

**Briefing Hendrik:** "Nimm den Kurztest raus, inklusive aller Verlinkungen. Wird bald durch einen
kleinen Wertetest ersetzt." Gemeint war `/minitest/` — der Test, der auf der Seite als "1-Min-Test",
"1-Min-Wertetest" und "1-Min-Werte-Check" auftritt. Die Seite `/kurztest-werte-mehr-erfahren/` heißt zwar
wörtlich "Kurztest", war aber schon vorher von nirgendwo verlinkt, also gab es dort nichts zu entfernen.

**Sechs Verlinkungen entfernt:**

*Hauptseite (`index.html` + `valueschool.html`, identische Kopien):*
1. Hero-CTA "🧭 Wo stehst du? 1-Min-Test"
2. CTA-Block nach "Warum das jetzt zählt": "Mach den 1-Min-Werte-Check" plus Unterzeile
   "1 Minute. 5 Fragen. Dein Werte-Typ per Mail."
3. Footer-Link "1-Min-Wertetest"
4. Floating-CTA unten rechts

*`programm/index.html`:*
5. Footer-Link, 6. Floating-CTA

**Entscheidung dabei:** Im Hero standen zwei CTAs nebeneinander, der Test als Hauptbutton und
"Erstgespräch buchen" als blasser Ghost-Button. Nach dem Entfernen wäre nur der blasse übrig geblieben.
"Erstgespräch buchen" hat deshalb die Optik des Hauptbuttons übernommen (Pink-Orange-Verlauf, 20/44
Padding, Schatten). Rückgängig zu machen, sobald der neue Wertetest den Platz einnimmt.

**Nicht angefasst:** Der `showFloating`-State samt Scroll-Listener bleibt drin, ungenutzt. Der neue Test
kriegt den Floating-Button voraussichtlich zurück. Die Ordner `minitest/` und
`kurztest-werte-mehr-erfahren/` bleiben liegen, die Seiten sind über die direkte URL weiter erreichbar,
nur nicht mehr verlinkt.

**Nebenbefund, mit repariert: 171 KB Nullbytes.** `index.html` und `valueschool.html` waren 222 KB groß,
aber nur 51 KB davon waren HTML. Hinter `</html>` hingen 171.115 Nullbytes, in `programm/index.html`
weitere 116. Klassischer Schreibabbruch, vermutlich OneDrive. Browser ignorieren das stillschweigend,
deshalb ist es nie aufgefallen — ausgeliefert wurde es trotzdem bei jedem Aufruf. Abgeschnitten.
**index.html: 222.193 → 48.885 Bytes.** Damit ist die Hauptseite jetzt wirklich so leicht, wie die
Performance-Session im Mai gedacht war.

**Geprüft vor dem Schreiben:** Beide Dateien headless in Chromium gerendert. React mountet sauber
(#root 55.659 Zeichen), kein einziger JS-Fehler, FadeIn/section/footer/ImgBox alle balanciert, im
sichtbaren Text kommt "1-Min" nicht mehr vor, verbleibende Links sind `/programm/`, `/wer-wir-sind/`,
Calendly, Valueverse-Shop, Datenschutz, Impressum. `index.html` und `valueschool.html` sind byte-identisch.

**Achtung, Folge fürs Marketing:** Der Minitest war der einzige niedrigschwellige Einstieg und hing an
Brevo mit Double-Opt-in. Ab jetzt ist "Erstgespräch buchen" der einzige Conversion-Punkt der Seite. Bis
der neue Wertetest steht, kommen keine neuen E-Mail-Leads rein.

**Kein Backup als `.pre`-Datei angelegt** — der Rückweg ist "Discard changes" in GitHub Desktop, solange
nicht committed ist. Im Repo liegen ohnehin schon 14 alte `.bak`/`.pre-*`-Dateien.

**Wo weitermachen:** Hendrik prüft lokal im Browser und pusht. Danach: der neue kleine Wertetest, der den
Platz einnimmt. Vorher die offene Grundsatzfrage klären, ob der als eigene App gebaut wird oder als
Konfiguration der bestehenden Wertetest-Engine (`FEATURE_PROFILES`).

---

## 2026-05-12 (Session 6) — Performance-Komplettoptimierung

**Größte Wins:**
- HTML 526 KB → 216 KB (-59%)
- Hero-Video 6.3 MB → 1.7 MB (-73%)
- Initial Pageload (Desktop, no cache): ~7.1 MB → ~2.1 MB (-71%)

**Was konkret passiert ist:**

1. **226 KB Base64-Bilder aus HTML extrahiert** (LOGO_COLOR, LOGO_WHITE, IMG_HENDRIK, IMG_SEBASTIAN, IMG_HERZ, schuelerin in Sek 3). Liegen jetzt als externe Files in /bilder/ und /logos/. Browser kann sie parallel laden + cachen.

2. **WebP-Versionen für alle Bilder** erzeugt. Im HTML referenziert. Spart 30-50% pro Bild. (Ältere Browser bekommen evtl. kein Bild — Browser-Support für WebP ist 97%+, sollte safe sein. JPGs liegen als Fallback noch auf dem Server, falls jemand zurückwechseln will.)

3. **Hero-Video neu encoded**: 1280×720 statt 1920×1080, CRF 32 statt 26. Quality ist mit dem 5px-Blur drüber nicht unterscheidbar. moodvideos_web.mp4 bleibt als Backup, neue Version heißt moodvideos_web_v2.mp4.

4. **PlayTheHype-Logo**: 97 KB → 26 KB (WebP).

5. **Loading-Hints** im `<head>`:
   - `preconnect` zu Google Fonts (war schon da)
   - `dns-prefetch` zu cdnjs.cloudflare
   - `preload` für hero.webp (fetchpriority="high") und Logo
   - `loading="lazy"` auf allen Sek-4/6-Bildern, Logos und ImgBox-Komponente

6. **netlify.toml**: Cache-Headers gesetzt — Bilder/Video/Logos werden 1 Jahr immutable gecached. HTML bleibt always-fresh.

7. **Sanity-Check**: 7 Sections balanced, 25 FadeIn balanced, 4 Minitest-Verlinkungen unverändert, alle referenzierten Asset-Files existieren.

**Backups**: valueschool.html.pre-perf, index.html.pre-perf

**Wo weitermachen:**
Hendrik pusht und schaut sich's an. Mobile-Performance sollte spürbar besser sein. Falls WebP-Probleme auf Altgeräten: in den 6 sed-Befehlen `.webp` → `.jpg` zurück (JPGs liegen alle noch da).

**Was NICHT angefasst wurde** (für nächste Sessions):
- Babel/React-Scripts ohne defer (Server lädt sie parallel zum HTML-Parse, defer würde Render verzögern weil React für Content nötig)
- HTML-Minify (Babel-Block ist whitespace-sensitiv, zu riskant)
- Unterseiten /programm/, /wer-wir-sind/ etc. — die haben eigene Assets, müssten separat optimiert werden
- Founder-Story-Konsistenz Hauptseite ↔ /wer-wir-sind/ (Hendrik-Priorität)

---

## 2026-05-12 (Session 5) — Hero: Blur-Filter + Video auch auf Mobile

**Gemacht:**
- Mobile-Video-Disable rückgängig — Hendrik will Video auf allen Geräten. 6.3 MB werden auf Mobile nachgeladen, das ist akzeptiert.
- CSS `filter: blur(10px)` aufs Hero-Video und -Poster → atmosphärische Unschärfe, Texte stechen heraus.
- `transform: scale(1.06)` damit der Blur-Edge die Sektionsränder nicht ausfranst.
- `prefers-reduced-motion` bleibt drin: bei aktivierter Bewegungsreduktion kein Autoplay-Video, nur (geblurrtes) Standbild.
- IMG_HERZ Base64 → externes File für nächste Session in OPEN_QUESTIONS geparkt.

---

## 2026-05-12 (Session 4) — Hero-Polish: dunkler Gradient + Mobile-Performance

**Gemacht:**
- Hero-Gradient verstärkt mit Lila-Stich: rgba(60,30,120,0.72) oben → rgba(28,27,94,0.88) mittig → rgba(20,15,70,0.94) unten. Mehr Bildschärfe für die Hero-Texte.
- **Mobile-Performance**: Auf Mobilgeräten (≤768px) wird das 6.3-MB-Video komplett ausgeblendet, stattdessen nur statisches hero.jpg-Poster (189 KB). Spart Mobilvolumen.
- Auch bei `prefers-reduced-motion: reduce` läuft kein Video.
- `preload="metadata"` aufs Video — Browser lädt nur Header sofort, nicht den ganzen Body.
- Logos in Sek 6 + ImgBox-Komponente bekommen `loading="lazy"` + `decoding="async"`.
- valueschool.html und index.html synchron, balance ok (7 sections, 25 FadeIn, 4 Minitest-Links).

**Ladezeit-Bilanz danach:**
- Desktop: HTML 444 KB + Video-Header + Hero-Poster 189 KB initial, Video-Body progressiv beim Sichtwerden
- Mobile: HTML 444 KB + Hero-Poster 189 KB — kein Video. Massive Einsparung.

**Wo weitermachen (gleich):**
Vor Push: Hendrik schaut sich Hero + Mobile-Verhalten an.

**Offen für nächste Session:**
- IMG_HERZ Base64 (74 KB im HTML) könnte als externes File raus, falls Manifest-Sek bleibt
- Founder-Story-Konsistenz Hauptseite ↔ /wer-wir-sind/

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
