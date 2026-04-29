-- ════════════════════════════════════════════════════════════════════
-- VALUE SCHOOL MINITEST — Result-Text-Update auf TEIL_1 + TEIL_2
-- In Supabase SQL Editor in NEUEM Tab ausführen
-- ════════════════════════════════════════════════════════════════════

-- 1) Neue Spalten hinzufügen (falls noch nicht da)
alter table public.minitest_results_text
  add column if not exists text_teil_1 text,
  add column if not exists text_teil_2 text;

-- 2) Alle 20 Einträge mit TEIL_1 + TEIL_2 befüllen / aktualisieren
insert into public.minitest_results_text (role, type, text, text_teil_1, text_teil_2) values

-- ── SCHULLEITUNG ─────────────────────────────────────────────────────
('schulleitung', 'sicherheit',
 $$Du bist die Person, an die sich Kollegium und Eltern wenden, wenn nichts mehr klar ist. Du sortierst, strukturierst, schaffst Ordnung. Schulen brauchen Menschen wie dich.$$,
 $$Du bist die Person, an die sich Kollegium und Eltern wenden, wenn nichts mehr klar ist. Du sortierst, strukturierst, schaffst Ordnung, auch wenn um dich Chaos herrscht. Im Konflikt fragst du erst, was eigentlich gilt. Verlässlichkeit ist nicht Pflicht für dich, sondern dein natürlicher Modus.$$,
 $$Schulen brauchen Menschen wie dich. Stabilität ist gerade jetzt unbezahlbar. Gleichzeitig kennst du das Spannungsfeld: Wenn alles klar geregelt ist, kommt Bewegung manchmal zu kurz. Hier können wir gut zusammenarbeiten, damit dein Halt zur Brücke wird, auf der auch Wandel und Verbindung Platz haben.$$),

('schulleitung', 'beziehung',
 $$Du bist die, die hinter den Akten und Konferenzen die Menschen sieht. Bei dir geht's nie nur um Themen, immer um die Menschen dahinter.$$,
 $$Du bist die, die hinter den Akten und Konferenzen die Menschen sieht. Du spürst, wenn jemand im Kollegium kämpft, bevor's ausgesprochen wird. Konflikte willst du nicht ausgleichen, du willst, dass sich alle gehört fühlen. Bei dir geht's nie nur um Themen, immer um die Menschen dahinter.$$,
 $$Schulen, in denen sich Menschen aufgehoben fühlen, bewegen etwas. Deine Wärme schafft das Fundament. Gleichzeitig: Wer alle halten will, vermisst manchmal die klare Linie oder den Mut zum Wandel. Wir helfen, dass deine Verbundenheit zum Tragwerk wird, das auch Reibung aushält.$$),

('schulleitung', 'veraenderung',
 $$Du bist nicht die, die zuckt, wenn was Neues kommt, du bist die, die's anstößt. Du brauchst Bewegung, brauchst das Gefühl: Hier verändert sich was.$$,
 $$Du bist nicht die, die zuckt, wenn was Neues kommt, du bist die, die's anstößt. Du siehst, was nicht mehr passt, bevor's andere merken. Konferenzen, in denen alles beim Alten bleibt, machen dich müde. Du brauchst Bewegung, brauchst das Gefühl: Hier verändert sich was.$$,
 $$Schulen brauchen Menschen wie dich, weil ohne Wandel nichts geht. Deine Energie ist Treibstoff. Gleichzeitig: Wer schnell vorausgeht, lässt manchmal die zurück, die mehr Halt brauchen. Wir helfen, dass dein Wandel das Kollegium mitnimmt, statt dass er spaltet.$$),

('schulleitung', 'erfuellung',
 $$Du leitest die Schule, weil sie zu dir passt, oder weil du sie zu dem machst, was zu dir passt. Echtheit ist nichts, das du dir vornimmst, du kannst gar nicht anders.$$,
 $$Du leitest die Schule nicht, weil's der nächste Karriereschritt war. Du leitest sie, weil sie zu dir passt, oder weil du sie zu dem machst, was zu dir passt. Du folgst nicht Plänen anderer, sondern deinem inneren Kompass. Echtheit ist nichts, das du dir vornimmst, du kannst gar nicht anders.$$,
 $$Schulen brauchen Menschen wie dich, weil sie sonst seelenlos werden. Du gibst einer Schule Charakter, Sinn, Haltung. Gleichzeitig: Was dich erfüllt, muss nicht alle erfüllen. Wir helfen, dass deine Vision zur gemeinsamen Erzählung wird, die das ganze Kollegium mittragen kann.$$),

-- ── LEHRKRAFT ────────────────────────────────────────────────────────
('lehrkraft', 'sicherheit',
 $$Du bist die Lehrkraft, in deren Klasse Lernen wirklich möglich ist. Wer dich kennt, weiß: Auf dich ist Verlass.$$,
 $$Du bist die Lehrkraft, in deren Klasse Lernen wirklich möglich ist. Nicht weil du streng bist, sondern weil deine Schüler wissen: Bei dir gibt's Halt. Klare Regeln, faire Konsequenzen, verlässliche Routine. Wer dich kennt, weiß: Auf dich ist Verlass.$$,
 $$Klassen brauchen genau diese Stabilität, gerade in einer Zeit, in der außen viel kippt. Du machst Lernen möglich. Gleichzeitig: Wenn alles streng geregelt läuft, fehlt manchmal Raum für das Unvorhergesehene oder das, was Schüler innerlich beschäftigt. Da können wir gut ergänzen.$$),

('lehrkraft', 'beziehung',
 $$Du bist die Lehrkraft, an die Schüler kommen, wenn sie nicht wissen wohin. Bei dir geht's nie nur um den Stoff, sondern um den Menschen, der ihn lernen soll.$$,
 $$Du bist die Lehrkraft, an die Schüler kommen, wenn sie nicht wissen wohin. Du siehst die, die übersehen werden, und gibst ihnen das Gefühl, dass sie zählen. Im Konflikt verstehst du beide Seiten, oft schneller als die Beteiligten. Bei dir geht's nie nur um den Stoff, sondern um den Menschen, der ihn lernen soll.$$,
 $$Schüler, die sich gesehen fühlen, lernen anders. Deine Empathie ist nicht Beigabe, sondern Hauptzutat. Gleichzeitig: Wer alle hält, hat manchmal selbst keinen Halt. Wir helfen dabei, dass deine Verbundenheit ein gemeinsames Fundament im Kollegium bekommt, damit du nicht alles allein tragen musst.$$),

('lehrkraft', 'veraenderung',
 $$Du bist die Lehrkraft, die nicht macht, was schon immer gemacht wurde. Du holst neue Methoden ins Klassenzimmer, probierst, traust dich.$$,
 $$Du bist die Lehrkraft, die nicht macht, was schon immer gemacht wurde. Du holst neue Methoden ins Klassenzimmer, probierst, traust dich. Wenn ein Schüler 'anders' will, denkst du nicht an den Aufwand, du denkst an die Chance. Stillstand macht dich kribbelig.$$,
 $$Schüler, die mit dir lernen, erleben, dass Veränderung möglich ist, eine Lebenslektion. Deine Innovationsfreude trägt weit. Gleichzeitig: Was für dich Aufbruch ist, kann für andere Verunsicherung sein. Wir helfen, dass deine Energie das Kollegium ansteckt, statt als Einzelkämpferin zu enden.$$),

('lehrkraft', 'erfuellung',
 $$Du machst Schule, weil du's mit Sinn machen willst. Schüler spüren: Bei dir geht's um was Echtes.$$,
 $$Du machst Schule, weil du's mit Sinn machen willst. Reine Stundenpläne, abgehakte Curricula, das reicht dir nicht. Du fragst dich: Was bewege ich wirklich? Du bringst dich ein, ehrlich, manchmal auch unbequem. Schüler spüren: Bei dir geht's um was Echtes.$$,
 $$Schüler brauchen Lehrkräfte, die zeigen, wie ein authentisches Leben aussieht. Genau das machst du. Gleichzeitig: Was dich erfüllt, muss nicht im Lehrplan stehen. Wir helfen, dass deine Echtheit nicht Einzelkampf bleibt, sondern als Klima ins Kollegium reinwirkt.$$),

-- ── SCHÜLER:IN ───────────────────────────────────────────────────────
('schueler', 'sicherheit',
 $$Du bist in deiner Klasse die, die nicht ständig laut sein muss, um wichtig zu sein. Du magst Klarheit. Verlässlich sein fühlt sich für dich richtig an.$$,
 $$Du bist in deiner Klasse die, die nicht ständig laut sein muss, um wichtig zu sein. Du magst Klarheit. Du weißt gerne, woran du bist. Wenn andere Stress haben, behältst du oft den Überblick. Verlässlich sein fühlt sich für dich richtig an, nicht wie eine Pflicht.$$,
 $$Klassen brauchen Menschen wie dich. Du gibst anderen Halt, weil du selbst gut geerdet bist. Gleichzeitig: Wenn alles 'klar' sein muss, kann auch die Spontaneität verloren gehen. Wenn deine Schule mit Werten arbeitet, lernst du beides: wann Halt hilft und wann Loslassen.$$),

('schueler', 'beziehung',
 $$Du bist die in deiner Clique, die merkt, wenn jemand nicht okay ist, auch wenn alle anderen lachen. Bei dir fühlen sich Leute zuhause.$$,
 $$Du bist die in deiner Clique, die merkt, wenn jemand nicht okay ist, auch wenn alle anderen lachen. Du hältst Verbindungen. Du vermittelst, wenn's kracht. Bei dir fühlen sich Leute zuhause. Loyalität ist für dich nicht Pflicht, sie ist dein Anker.$$,
 $$Eine Klasse mit dir drin ist eine Klasse, in der niemand allein ist. Deine Stärke ist Gold. Gleichzeitig: Wer alle hält, vergisst manchmal sich selbst. Wenn deine Schule mit Werten arbeitet, lernst du, wann Beziehung trägt und wann es Zeit ist, deine eigenen Grenzen zu zeigen.$$),

('schueler', 'veraenderung',
 $$Du bist in der Klasse die, die aufzeigt, wenn was nicht mehr passt. Du willst was bewegen.$$,
 $$Du bist in der Klasse die, die aufzeigt, wenn was nicht mehr passt. Du hältst nicht still, wenn dir was kribbelig wird. Du willst was bewegen. Wenn Erwachsene 'Das ist halt so' sagen, fragst du: Warum eigentlich?$$,
 $$Klassen brauchen Menschen wie dich. Du bringst frischen Wind, du forderst auf, du machst möglich. Gleichzeitig: Wer ständig drängt, wird manchmal als nervig erlebt. Wenn deine Schule mit Werten arbeitet, lernst du, deine Energie zu kanalisieren, sodass aus Reibung Bewegung wird, nicht Konflikt.$$),

('schueler', 'erfuellung',
 $$Du machst nicht alles mit, nur weil's alle machen. Authentisch sein ist für dich kein Ziel, das ist dein default.$$,
 $$Du machst nicht alles mit, nur weil's alle machen. Du fragst dich, ob's zu dir passt. Du suchst, was sich für DICH richtig anfühlt, auch wenn das bedeutet, anders zu sein. Authentisch sein ist für dich kein Ziel, das ist dein default.$$,
 $$Klassen brauchen junge Menschen wie dich, weil sie sonst Mitläufer-Gemeinschaften werden. Deine Echtheit ist Vorbild. Gleichzeitig: Wer immer 'sein eigenes Ding' macht, ist manchmal allein. Wenn deine Schule mit Werten arbeitet, findest du andere, die genauso ticken, und musst nicht mehr Solo bleiben.$$),

-- ── ELTERN ───────────────────────────────────────────────────────────
('eltern', 'sicherheit',
 $$Du bist das Elternteil, das dem Kind den Boden gibt. Du machst nicht den Stress mit, der draußen ist.$$,
 $$Du bist das Elternteil, das dem Kind den Boden gibt. Routine, klare Regeln, ein Zuhause, in dem dein Kind weiß, woran es ist. Wenn andere Familien chaotisch ticken, weiß dein Kind: Hier gibt's Verlass. Du machst nicht den Stress mit, der draußen ist.$$,
 $$Kinder, die zuhause Halt haben, gehen sicherer durch die Welt. Das ist deine Stärke. Gleichzeitig: Klare Regeln können sich für ein wachsendes Kind auch eng anfühlen. Wenn die Schule deines Kindes mit Werten arbeitet, ergänzen sich euer Halt zuhause und Wachstum draußen, dein Kind hat beides.$$),

('eltern', 'beziehung',
 $$Du bist das Elternteil, das nicht nur fragt 'Wie war Schule?' sondern 'Was hast du gefühlt?'. Beziehung ist für dich nicht Mittel zum Zweck, sondern das Ziel.$$,
 $$Du bist das Elternteil, das nicht nur fragt 'Wie war Schule?' sondern 'Was hast du gefühlt?'. Du siehst dein Kind. Wirklich. Du spürst, wenn was los ist, bevor's gesagt wird. Beziehung ist für dich nicht Mittel zum Zweck, sondern das Ziel.$$,
 $$Kinder, die zuhause wirklich gesehen werden, entwickeln Selbstvertrauen. Das ist dein Geschenk. Gleichzeitig: Wer immer für andere da ist, ist manchmal selbst nicht da, für sich. Wenn die Schule deines Kindes mit Werten arbeitet, lernen auch Lehrkräfte, dein Kind als Mensch zu sehen, du musst nicht alles allein abfangen.$$),

('eltern', 'veraenderung',
 $$Du bist das Elternteil, das dem Kind keine vorgefertigten Pfade aufdrückt. Du lässt wachsen.$$,
 $$Du bist das Elternteil, das dem Kind keine vorgefertigten Pfade aufdrückt. Du lässt wachsen. Wenn dein Kind anders sein will als du, freust du dich oft. Veränderung ist für dich nicht bedrohlich, sie gehört dazu.$$,
 $$Kinder mit Eltern wie dir lernen, dass Wandel okay ist, ein riesiger Vorteil im Leben. Gleichzeitig: Wer offen für alles ist, lässt manchmal Halt vermissen, gerade wenn's stürmisch wird. Wenn die Schule deines Kindes mit Werten arbeitet, gibt's beides, Raum zum Wachsen und Boden zum Stehen.$$),

('eltern', 'erfuellung',
 $$Du machst Erziehung nicht, wie 'man's halt macht'. Du machst sie, wie sie zu dir passt.$$,
 $$Du machst Erziehung nicht, wie 'man's halt macht'. Du machst sie, wie sie zu dir passt. Du lebst dein Leben, dein Kind sieht das, lernt davon. Authentisch sein ist für dich kein Erziehungsstil, du kannst gar nicht anders.$$,
 $$Kinder mit Eltern wie dir lernen früh, dass eigene Wege okay sind. Das prägt fürs Leben. Gleichzeitig: Wer seinen Weg geht, ist manchmal Solo unter konventionelleren Eltern. Wenn die Schule deines Kindes mit Werten arbeitet, findet dein Kind dort eine Sprache, die zuhause schon gelebt wird.$$),

-- ── SONSTIGE ─────────────────────────────────────────────────────────
('sonstige', 'sicherheit',
 $$Du bist die Person, an die sich Leute wenden, wenn's Klarheit braucht. In Krisen wirst du ruhig, nicht hektisch.$$,
 $$Du bist die Person, an die sich Leute wenden, wenn's Klarheit braucht. Du hältst die Sache zusammen, wenn andere wegrennen. Verlässlichkeit ist für dich nicht Pflicht, sondern Identität. In Krisen wirst du ruhig, nicht hektisch.$$,
 $$Genau diese Stabilität braucht's gerade in jeder Gruppe, jedem Team, jeder Familie. Gleichzeitig: Wenn alles fest sein muss, kommt Bewegung manchmal zu kurz. Wertearbeit gibt deiner Klarheit Tiefe, du weißt nicht nur, WAS gilt, sondern auch WARUM.$$),

('sonstige', 'beziehung',
 $$Du bist die Person, die spürt, was zwischen den Zeilen läuft. Verbundenheit ist für dich keine Übung, sondern dein default.$$,
 $$Du bist die Person, die spürt, was zwischen den Zeilen läuft. Du hältst Verbindungen, wo andere weiter wären. Bei dir fühlen sich Leute willkommen, auch ohne Smalltalk. Verbundenheit ist für dich keine Übung, sondern dein default.$$,
 $$Gemeinschaften brauchen Menschen wie dich, weil ohne dich vieles auseinander fallen würde. Gleichzeitig: Wer alle hält, ist manchmal selbst leer. Wertearbeit gibt deiner Verbundenheit Substanz, gemeinsame Werte machen aus Sympathie ein Fundament, das auch Reibung aushält.$$),

('sonstige', 'veraenderung',
 $$Du bist die Person, die nicht abwartet. Du gestaltest. Risiko ist für dich kein Tabu.$$,
 $$Du bist die Person, die nicht abwartet. Du gestaltest. Du siehst, was nicht mehr passt, und packst's an. Stillstand macht dich kribbelig, Bewegung macht dich lebendig. Risiko ist für dich kein Tabu, es gehört zum Spiel.$$,
 $$Gruppen, Firmen, Vereine brauchen Menschen wie dich. Du bringst Bewegung, wo Stagnation lähmen würde. Gleichzeitig: Schnelligkeit kann andere überfahren. Wertearbeit gibt deinem Wandel Richtung, Veränderung mit gemeinsamen Werten ist Entwicklung, nicht Aktionismus.$$),

('sonstige', 'erfuellung',
 $$Du gehst nicht den Weg, den andere von dir erwarten. Du gehst den, der sich für dich richtig anfühlt.$$,
 $$Du gehst nicht den Weg, den andere von dir erwarten. Du gehst den, der sich für dich richtig anfühlt. Authentisch zu leben ist für dich kein Ziel, sondern Default-Modus. Du hörst auf dich, auch wenn das laut wird.$$,
 $$Die Welt braucht Menschen wie dich, weil du anderen vorlebst, dass eigene Wege okay sind. Gleichzeitig: Wer dem inneren Kompass folgt, ist manchmal allein. Wertearbeit gibt deinem Sinn Resonanz, wenn andere ihre Werte auch kennen, findest du deine Leute schneller.$$)

on conflict (role, type) do update set
  text = excluded.text,
  text_teil_1 = excluded.text_teil_1,
  text_teil_2 = excluded.text_teil_2,
  updated_at = now();
