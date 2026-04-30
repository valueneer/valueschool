-- ════════════════════════════════════════════════════════════════════
-- VALUE SCHOOL MINITEST — Update aus REVIEW.md (29.04.2026 Abend)
-- 1) QUESTIONS: Werte-Änderungen + Szenario-Anpassungen
-- 2) RESULT_TEXTS: Komplett neu in weicherem Stil ("Dir sind X wichtig…")
-- 3) TIEBREAKERS: unverändert (kein Update nötig)
--
-- Im Supabase SQL Editor ausführen:
-- https://app.supabase.com/project/iwsgkwmtsrqpqlahvrhl/sql
-- ════════════════════════════════════════════════════════════════════

-- ─── 1. QUESTIONS upserten (25 Einträge: 5 Fragen × 5 Rollen) ─────

insert into public.minitest_questions (question_id, role, theme, scenario, answer_a_value, answer_a_action, answer_a_type, answer_b_value, answer_b_action, answer_b_type) values

-- ── Frage 1: Bewährtes wird aufgeweicht
(1, 'schulleitung', 'Bewährtes wird aufgeweicht',
  $$In deinem Kollegium gibt es eine Lehrerin, die zunehmend von Vorgaben abweicht, kommt zu spät, gibt eigene Regeln raus, ignoriert Vereinbarungen. Das Kollegium wartet auf deine Reaktion. Was tust du?$$,
  'Empathie', $$Ich frage vorsichtig nach, was eigentlich los ist.$$, 'beziehung',
  'Respekt',  $$Ich spreche die Person klar an und setze die Regeln durch.$$, 'sicherheit'),

(1, 'lehrkraft', 'Bewährtes wird aufgeweicht',
  $$Eine deiner Schülerinnen hat seit zwei Wochen ihre Hausaufgaben nicht abgegeben. Sie ist sonst absolut zuverlässig. Heute siehst du, wie sie in der Pause weint, willst sie ansprechen, sie wendet sich ab. Morgen ist Notenstichtag. Was tust du?$$,
  'Empathie', $$Ich gebe ihr Zeit, lass die Hausaufgabe diesmal durchgehen. Die Note kann warten.$$, 'beziehung',
  'Respekt',  $$Ich notiere die fehlende Hausaufgabe wie bei allen anderen.$$, 'sicherheit'),

(1, 'schueler', 'Bewährtes wird aufgeweicht',
  $$In eurer Klasse gilt: Bei Gruppenarbeiten machen alle mit. Einer aus eurer Gruppe lässt euch wieder mal die ganze Arbeit machen. Was tust du?$$,
  'Mitgefühl',     $$Ich frag ihn allein, ob bei ihm gerade was nicht stimmt.$$, 'beziehung',
  'Gerechtigkeit', $$Ich sage es offen in der Gruppe: So geht's nicht weiter.$$, 'sicherheit'),

(1, 'eltern', 'Bewährtes wird aufgeweicht',
  $$Bei euch gilt: 30 Minuten Bildschirmzeit am Tag. Dein Kind testet diese Regel ständig, argumentiert, verhandelt, weicht aus. Heute schon eine Stunde länger. Was tust du?$$,
  'Empathie',  $$Ich setze mich dazu und frage, was gerade so los ist.$$, 'beziehung',
  'Kontrolle', $$Ich nehme das Gerät weg und erinnere an unsere Vereinbarung.$$, 'sicherheit'),

(1, 'sonstige', 'Bewährtes wird aufgeweicht',
  $$In deinem Umfeld gibt's eine eingespielte Routine, die alle gut finden. Eine neue Person bricht sie immer wieder, nicht böse, aber konsequent. Andere schauen zu dir. Was tust du?$$,
  'Empathie',        $$Ich suche das Gespräch und versuche zu verstehen, warum.$$, 'beziehung',
  'Zuverlässigkeit', $$Ich spreche an: Die Routine gibt's nicht ohne Grund.$$, 'sicherheit'),

-- ── Frage 2: Du siehst, wie jemand schlecht behandelt wird
(2, 'schulleitung', 'Du siehst, wie jemand schlecht behandelt wird',
  $$Du merkst seit Monaten: An eurer Schule entsteht eine schleichende Kultur, in der sich die 'starken' Schüler über die schwächeren stellen. Drei Lehrer haben dich leise drauf angesprochen. Du könntest in der nächsten Schulkonferenz eine offene Aussprache ansetzen, riskierst aber Außenwirkung. Was tust du?$$,
  'Rücksichtnahme', $$Ich arbeite leise: Einzelgespräche mit Klassenleitungen, gezielte Maßnahmen pro Klasse.$$, 'beziehung',
  'Vertrauen',      $$Ich setze die Aussprache an und mache es zum Schulthema. Auch wenn der Ruf leidet.$$, 'erfuellung'),

(2, 'lehrkraft', 'Du siehst, wie jemand schlecht behandelt wird',
  $$Im Lehrerzimmer wird über einen 'Problemschüler' gelästert, er kassiert wieder eine Vier, sei eh nicht zu retten. Du weißt: Es gibt Herausforderungen zuhause. Wenn du den Hintergrund ausplauderst, verletzt du seine Privatsphäre. Was tust du?$$,
  'Rücksichtnahme', $$Ich werfe einen Satz ein, der lenkt: 'Vielleicht ist da was bei ihm los, was wir nicht wissen.'$$, 'beziehung',
  'Authentizität',  $$Ich sage klar: 'So wollen wir nicht über Schüler reden. Punkt.'$$, 'erfuellung'),

(2, 'schueler', 'Du siehst, wie jemand schlecht behandelt wird',
  $$In eurer Klassen-WhatsApp wird seit Tagen über jemanden aus der Nachbarklasse gelästert. Alle finden's witzig. Die Person weiß nichts. Wenn du dich einmischst, bist du vielleicht als nächstes dran. Was tust du?$$,
  'Harmonie',        $$Ich schweige in der Gruppe. Spreche stattdessen sie persönlich an.$$, 'beziehung',
  'Selbstvertrauen', $$Ich schreibe in die Gruppe: 'Hört auf, das ist eklig.'$$, 'erfuellung'),

(2, 'eltern', 'Du siehst, wie jemand schlecht behandelt wird',
  $$Beim Elternabend reden zwei Mütter abfällig über die Familie eines Kindes ('Was wundert man sich, bei DENEN'). Andere nicken. Wenn du widersprichst, machst du dir die einflussreichsten Eltern zum Feind, was deine Kinder spüren werden. Was tust du?$$,
  'Harmonie',        $$Ich höre zu, will den Abend nicht kippen. Sage vielleicht danach unter vier Augen etwas.$$, 'beziehung',
  'Selbstvertrauen', $$Ich sage laut: 'So reden wir hier nicht über Kinder oder Eltern. Bitte hört auf.'$$, 'erfuellung'),

(2, 'sonstige', 'Du siehst, wie jemand schlecht behandelt wird',
  $$In deinem Umfeld wird offen abfällig über eine bestimmte Gruppe gesprochen ('die lernen's eh nicht'). Niemand widerspricht. Wenn du das tust, gibt's einen langen Streit und du giltst danach als 'der eine, der das Politische macht'. Was tust du?$$,
  'Harmonie',        $$Ich halte mich raus. Das kläre ich nicht in einer Tischrunde.$$, 'beziehung',
  'Selbstvertrauen', $$Ich sage offen, was ich denke. Auch wenn ich danach allein dastehe.$$, 'erfuellung'),

-- ── Frage 3: Generationenkonflikt
(3, 'schulleitung', 'Generationenkonflikt',
  $$Eine Gruppe junger Lehrerinnen schlägt vor, klassische Klassenarbeiten abzuschaffen und stattdessen etwas Neues einzuführen. Drei alteingesessene Kollegen lehnen ab: 'Das bringt doch nichts.' Eltern und Träger werden Fragen stellen. Was tust du?$$,
  'Mut',        $$Ich starte einen Pilot in zwei Klassen, hol die Alteingesessenen ins Pilot-Design rein.$$, 'veraenderung',
  'Sicherheit', $$Ich vertage. Für so eine Veränderung müssen alle im Boot sein.$$, 'sicherheit'),

(3, 'lehrkraft', 'Generationenkonflikt',
  $$Eine sehr engagierte Schülerin will ihre Hausaufgabe lieber als Video machen statt als Aufsatz. Pädagogisch wäre das spannend. Aber: andere werden 'Warum darf SIE das?' fragen, der Bewertungsaufwand explodiert, Kollegen gucken schief. Was tust du?$$,
  'Mut',       $$Ich lass sie das Video machen, dokumentiere es als Experiment, mach's in der Konferenz transparent.$$, 'veraenderung',
  'Disziplin', $$Ich sage: Schriftlich ist die Aufgabe für alle, das hat Gründe.$$, 'sicherheit'),

(3, 'schueler', 'Generationenkonflikt',
  $$Beim Familienrat: Du willst dieses Jahr NICHT in den Sommerurlaub, sondern etwas Eigenes machen. Deine Eltern reagieren skeptisch. Wenn du dich durchsetzt, gibt's wochenlang schlechte Stimmung zuhause. Was tust du?$$,
  'Mut',       $$Ich erkläre, warum mir das wichtig ist, und sage: Ich mach das.$$, 'veraenderung',
  'Tradition', $$Ich gehe mit. Familienurlaub ist bei uns Tradition.$$, 'sicherheit'),

(3, 'eltern', 'Generationenkonflikt',
  $$Dein 17-jähriger Sohn will nach dem Abi NICHT studieren, sondern erstmal chillen und schauen, was kommt. Dein Partner sieht den Karriereweg des Sohnes klar vor sich. Wenn du ihn unterstützt, gehst du gegen die Familie. Was tust du?$$,
  'Aufgeschlossenheit', $$Ich unterstütze seinen Weg offen, und nehm in Kauf, dass ich's der Verwandtschaft erkläre.$$, 'veraenderung',
  'Sicherheit',         $$Ich versuche, ihn auf den bewährten Weg zurückzuholen. BWL hält viele Türen offen.$$, 'sicherheit'),

(3, 'sonstige', 'Generationenkonflikt',
  $$In deinem Umfeld wird etwas Etabliertes radikal in Frage gestellt, wie ihr im Verein entscheidet, in der Firma arbeitet. Eine jüngere Generation will das ganz anders. Du wirst gefragt, wo du stehst. Was tust du?$$,
  'Innovation', $$Ich stelle mich hinter das Neue und nehme die Reibung mit den Älteren in Kauf.$$, 'veraenderung',
  'Tradition',  $$Ich verteidige das Bewährte. Es gibt Gründe, warum wir das so machen.$$, 'sicherheit'),

-- ── Frage 4: Du bist mit deiner Situation nicht happy
(4, 'schulleitung', 'Du bist mit deiner Situation nicht happy',
  $$Du bist seit 8 Jahren Schulleitung. Die Schule läuft gut, die Zahlen stimmen. Aber etwas in dir sagt: Es ist nicht mehr DEIN Projekt. Eine andere Schule sucht eine Leitung, komplett neuer Aufbau. Spannender, aber alles hier, Team, Routinen, bliebe zurück. Was tust du?$$,
  'Selbstverwirklichung', $$Ich höre auf mein Bauchgefühl und bewerbe mich bei der anderen Schule.$$, 'erfuellung',
  'Verantwortung',        $$Ich kremple hier was um. 8 Jahre Aufbau wirft man nicht weg.$$, 'veraenderung'),

(4, 'lehrkraft', 'Du bist mit deiner Situation nicht happy',
  $$Seit 12 Jahren Lehrkraft. Du machst deinen Job gut. Aber: Seit Corona spürst du keine echte Verbindung mehr. Manchmal denkst du an Coaching, raus aus der Schule. Aber Familie, Gehalt, Kollegen brauchen dich. Was tust du?$$,
  'Freiheit',    $$Ich nehme mir die Frage ernst, was wirklich zu mir passt, auch wenn das Veränderung bedeutet.$$, 'erfuellung',
  'Entwicklung', $$Ich gestalte meinen Job aktiv um. Bevor ich gehe, hol ich mir den Drive zurück.$$, 'veraenderung'),

(4, 'schueler', 'Du bist mit deiner Situation nicht happy',
  $$Du bist 15. Schule fühlt sich gerade leer an. Noten okay, Freunde da, aber irgendwas fehlt. Wenn du mit deinen Eltern darüber redest, sagen sie: 'Das ist die Pubertät, das geht vorbei.' Was tust du?$$,
  'Selbstverwirklichung', $$Ich nehm die Sache selbst in die Hand, suche raus was MIR was bedeutet.$$, 'erfuellung',
  'Verantwortung',        $$Ich zieh erstmal durch, vielleicht ändert sich ja noch was.$$, 'veraenderung'),

(4, 'eltern', 'Du bist mit deiner Situation nicht happy',
  $$Seit 12 Jahren Elternteil. Es funktioniert alles. Aber du merkst, dass du als 'Mensch' kaum noch vorkommst. Wenn du dich fragst 'wer bin ich noch außerhalb dieser Rollen?', kommt nicht viel. Was tust du?$$,
  'Selbstbewusstsein', $$Ich höre auf mich, frage was ich für MICH brauche, nehme mir konsequent Zeit dafür.$$, 'erfuellung',
  'Entwicklung',       $$Ich gestalte meinen Alltag aktiv um, baue neue Routinen ein, suche Neues was mich nährt.$$, 'veraenderung'),

(4, 'sonstige', 'Du bist mit deiner Situation nicht happy',
  $$Seit Monaten merkst du: Dein Leben ist nicht rund. Es funktioniert alles, Job, Beziehungen, Wohnen. Aber etwas Zentrales fehlt. Du sitzt manchmal abends da und fragst dich: 'Ist das alles?' Was tust du?$$,
  'Selbstverwirklichung', $$Ich höre genauer auf mich, was wirklich passt, was mich nährt, was Sinn ergibt.$$, 'erfuellung',
  'Verantwortung',        $$Ich mache erstmal weiter und schaue, was sich mit der Zeit ändert.$$, 'veraenderung'),

-- ── Frage 5: Konflikt mit jemandem in deinem Umfeld
(5, 'schulleitung', 'Konflikt mit jemandem in deinem Umfeld',
  $$Der Schulträger teilt dir mit: Eure Personalmittel werden nächstes Jahr gekürzt, du sollst eine Stelle einsparen. Du könntest die Streichung 'durchwinken' und im Kollegium politisch mildern, oder vor dem Träger offen Position beziehen. Politisch riskant. Was tust du?$$,
  'Loyalität',     $$Ich versuche, die Streichung intern abzufedern und investiere meine Energie ins Kollegium.$$, 'beziehung',
  'Verantwortung', $$Ich beziehe öffentlich Position gegen den Träger, auch wenn's mich politisch was kostet.$$, 'veraenderung'),

(5, 'lehrkraft', 'Konflikt mit jemandem in deinem Umfeld',
  $$Du hast einen langen Konflikt mit einem Elternteil über die Bewertung des Kindes. Es eskaliert: Schriftliche Beschwerde an die Schulleitung, du seist 'voreingenommen'. Du weißt: Du hast korrekt bewertet, aber dieser Konflikt zieht sich monatelang. Was tust du?$$,
  'Toleranz',      $$Ich treffe mich mit den Eltern, höre genau zu, suche einen Weg, auch wenn ich Kompromisse machen muss.$$, 'beziehung',
  'Verantwortung', $$Ich bleibe bei meiner Einschätzung. Würde ich nachgeben, würden andere Eltern denken: Wer laut ist, bekommt Recht.$$, 'veraenderung'),

(5, 'schueler', 'Konflikt mit jemandem in deinem Umfeld',
  $$Du hast einen schweren Konflikt mit deiner besten Freundin / deinem besten Freund. Es geht um etwas Grundlegendes. Eine Stimme sagt: 'Lass die Freundschaft retten.' Eine andere: 'Vielleicht wachsen wir auseinander.' Was tust du?$$,
  'Treue', $$Ich mache den ersten Schritt, kämpfe um die Freundschaft. Wir kennen uns zu lange.$$, 'beziehung',
  'Mut',   $$Ich sage, was Sache ist, und akzeptiere, wenn das die Freundschaft beendet.$$, 'veraenderung'),

(5, 'eltern', 'Konflikt mit jemandem in deinem Umfeld',
  $$Seit Monaten Spannung mit deinem Partner über die Erziehung eures Kindes. Beim letzten Streit habt ihr euch tief verletzt. Bald ist Eltern-Sprechstunde, und ihr werdet vor der Lehrerin gemeinsam darstellen müssen, wie ihr zuhause vorgeht. Was tust du?$$,
  'Toleranz',      $$Ich suche einen gemeinsamen Weg, der für uns beide tragbar ist, auch wenn ich Abstriche machen muss.$$, 'beziehung',
  'Verantwortung', $$Ich beziehe Position für meinen Erziehungsstil, auch wenn's neuen Streit gibt.$$, 'veraenderung'),

(5, 'sonstige', 'Konflikt mit jemandem in deinem Umfeld',
  $$Du hast ein dauerhaftes Reibungsverhältnis mit jemandem in deinem Umfeld, Verein, Freundeskreis, Familie. Es belastet dich seit Monaten. Du könntest weiter aushalten oder die Situation aufbrechen. Was tust du?$$,
  'Toleranz',      $$Ich suche das Gespräch, will die Verbindung halten und einen Weg finden, der für beide trägt.$$, 'beziehung',
  'Verantwortung', $$Ich bringe es auf den Punkt, auch wenn die Beziehung das nicht überlebt.$$, 'veraenderung')

on conflict (question_id, role) do update set
  theme           = excluded.theme,
  scenario        = excluded.scenario,
  answer_a_value  = excluded.answer_a_value,
  answer_a_action = excluded.answer_a_action,
  answer_a_type   = excluded.answer_a_type,
  answer_b_value  = excluded.answer_b_value,
  answer_b_action = excluded.answer_b_action,
  answer_b_type   = excluded.answer_b_type,
  updated_at      = now();


-- ─── 2. RESULT_TEXTS upserten — weicher Stil ────────────────────────
-- Jeder Text ist getrennt in TEIL_1 (Selbstbild) + TEIL_2 (Wertearbeits-Bridge)

insert into public.minitest_results_text (role, type, text, text_teil_1, text_teil_2) values

-- ── SCHULLEITUNG ─────────────────────────────────────────────────────
('schulleitung', 'sicherheit',
 $$Dir sind Sicherheit, Struktur und klare Regeln wichtig — als Schulleitung gibst du deinem Kollegium und deiner Schule damit Halt.$$,
 $$Dir sind Sicherheit, Struktur und klare Regeln wichtig — als Schulleitung gibst du deinem Kollegium und deiner Schule damit Halt. Du sorgst für verlässliche Prozesse und eine Schule, auf die Eltern und Träger zählen können.$$,
 $$Wenn deine Schule mit Werten arbeitet, wird aus Stabilität gemeinsam getragene Klarheit, nicht Regeln, die ausgehalten werden, sondern Werte, die alle verstehen.$$),

('schulleitung', 'beziehung',
 $$Dir sind Verbindung, Empathie und Mitgefühl wichtig — als Schulleitung hältst du dein Kollegium damit zusammen.$$,
 $$Dir sind Verbindung, Empathie und Mitgefühl wichtig — als Schulleitung hältst du dein Kollegium damit zusammen. Du siehst die Menschen hinter den Rollen, vermittelst zwischen Lagern und schaffst eine Schule, in der man sich aufgehoben fühlt.$$,
 $$Wenn deine Schule mit Werten arbeitet, gewinnt deine Wärme Substanz, gemeinsame Werte machen aus Beziehungen ein Tragwerk.$$),

('schulleitung', 'veraenderung',
 $$Dir sind Entwicklung, Mut und Wandel wichtig — als Schulleitung treibst du deine Schule damit voran.$$,
 $$Dir sind Entwicklung, Mut und Wandel wichtig — als Schulleitung treibst du deine Schule damit voran. Du erkennst, was geht, packst neue Ideen an und scheust den Wandel nicht.$$,
 $$Wenn deine Schule mit Werten arbeitet, bekommt dein Wandel Richtung, gemeinsame Werte sorgen dafür, dass Veränderung nicht spaltet, sondern verbindet.$$),

('schulleitung', 'erfuellung',
 $$Dir sind Freiheit, Selbstbestimmung und Authentizität wichtig — als Schulleitung führst du damit aus innerer Klarheit.$$,
 $$Dir sind Freiheit, Selbstbestimmung und Authentizität wichtig — als Schulleitung führst du damit aus innerer Klarheit. Du gehst nicht den Weg, den andere erwarten, sondern den, der dir und deiner Schule entspricht.$$,
 $$Wenn deine Schule mit Werten arbeitet, bekommt deine Sinnsuche Form, wenn alle ihre Werte kennen, finden mehr Menschen ihren Sinn an deiner Schule.$$),

-- ── LEHRKRAFT ────────────────────────────────────────────────────────
('lehrkraft', 'sicherheit',
 $$Dir sind Sicherheit, Struktur und klare Regeln wichtig — als Lehrkraft gibst du deinen Schülern damit Halt.$$,
 $$Dir sind Sicherheit, Struktur und klare Regeln wichtig — als Lehrkraft gibst du deinen Schülern damit Halt. Du sorgst für verlässliche Strukturen und einen Klassenraum, in dem Lernen möglich ist.$$,
 $$Wenn deine Schule mit Werten arbeitet, gewinnt deine Disziplin Tiefe, Regeln, die alle verstehen und mittragen, statt Regeln, die ausgehalten werden.$$),

('lehrkraft', 'beziehung',
 $$Dir sind Verbindung, Empathie und Mitgefühl wichtig — als Lehrkraft siehst du damit jeden einzelnen Schüler.$$,
 $$Dir sind Verbindung, Empathie und Mitgefühl wichtig — als Lehrkraft siehst du damit jeden einzelnen Schüler. Du baust Vertrauen auf, vermittelst bei Konflikten und schaffst eine Klasse, in der niemand übersehen wird.$$,
 $$Wenn deine Schule mit Werten arbeitet, bekommt deine Empathie Werkzeug, eine gemeinsame Werte-Sprache macht aus deiner Stärke das Fundament der ganzen Schule.$$),

('lehrkraft', 'veraenderung',
 $$Dir sind Entwicklung, Mut und Wandel wichtig — als Lehrkraft probierst du damit Neues.$$,
 $$Dir sind Entwicklung, Mut und Wandel wichtig — als Lehrkraft probierst du damit Neues. Du holst frische Methoden ins Klassenzimmer, traust dich auch da, wo andere bremsen.$$,
 $$Wenn deine Schule mit Werten arbeitet, bekommt dein Wandel Anker, wenn das Kollegium gemeinsame Werte teilt, wird aus deinen Experimenten gemeinsame Schulentwicklung.$$),

('lehrkraft', 'erfuellung',
 $$Dir sind Freiheit, Selbstbestimmung und Authentizität wichtig — als Lehrkraft unterrichtest du damit aus dir heraus.$$,
 $$Dir sind Freiheit, Selbstbestimmung und Authentizität wichtig — als Lehrkraft unterrichtest du damit aus dir heraus. Du machst nicht, was 'man halt so macht', sondern was, woran du wirklich glaubst.$$,
 $$Wenn deine Schule mit Werten arbeitet, bekommt deine Echtheit Resonanz, wenn alle ihre Werte kennen, dürfen mehr Lehrkräfte echt sein.$$),

-- ── SCHÜLER:IN ───────────────────────────────────────────────────────
('schueler', 'sicherheit',
 $$Dir sind Sicherheit, Struktur und klare Regeln wichtig — du suchst Halt und magst verlässliche Menschen.$$,
 $$Dir sind Sicherheit, Struktur und klare Regeln wichtig — du suchst Halt und magst verlässliche Menschen. Du brauchst Strukturen, in denen du dich orientieren kannst. Du gibst anderen Halt, weil du selbst gut geerdet bist.$$,
 $$Wenn deine Schule mit Werten arbeitet, lernst du nicht nur Regeln auswendig, sondern verstehst, wofür sie da sind.$$),

('schueler', 'beziehung',
 $$Dir sind Verbindung, Empathie und Beziehungen wichtig — Menschen sind dein wichtigster Anker.$$,
 $$Dir sind Verbindung, Empathie und Beziehungen wichtig — Menschen sind dein wichtigster Anker. Du spürst Stimmungen, vermittelst bei Streit und kämpfst für deine Freunde. Wenn du da bist, fühlt sich keine:r allein.$$,
 $$Wenn deine Schule mit Werten arbeitet, lernst du, was Verbundenheit wirklich bedeutet, und dass auch andere darauf angewiesen sind.$$),

('schueler', 'veraenderung',
 $$Dir sind Entwicklung, Mut und Wandel wichtig — du willst was bewegen.$$,
 $$Dir sind Entwicklung, Mut und Wandel wichtig — du willst was bewegen. Du erkennst, was nicht mehr passt, und hast den Mut, es anzusprechen. Du bringst frischen Wind.$$,
 $$Wenn deine Schule mit Werten arbeitet, kannst du deinen Wandel-Drive auf etwas richten, was wirklich zählt, statt im Konflikt mit Älteren zu zerschellen.$$),

('schueler', 'erfuellung',
 $$Dir sind Freiheit, Selbstbestimmung und Authentizität wichtig — du folgst deinem Bauch.$$,
 $$Dir sind Freiheit, Selbstbestimmung und Authentizität wichtig — du folgst deinem Bauch. Du machst nicht mit, nur weil 'alle es machen', du suchst, was sich wirklich richtig anfühlt.$$,
 $$Wenn deine Schule mit Werten arbeitet, findest du andere, die genauso ticken, und musst dich nicht mehr verstellen.$$),

-- ── ELTERN ───────────────────────────────────────────────────────────
('eltern', 'sicherheit',
 $$Dir sind Sicherheit, Struktur und klare Regeln wichtig — als Elternteil gibst du deinem Kind damit Halt.$$,
 $$Dir sind Sicherheit, Struktur und klare Regeln wichtig — als Elternteil gibst du deinem Kind damit Halt. Du sorgst für verlässlichen Alltag und ein Zuhause, in dem dein Kind weiß, woran es ist.$$,
 $$Wenn die Schule deines Kindes mit Werten arbeitet, ergänzen sich euer Halt zuhause und die Verlässlichkeit in der Schule, dein Kind hat zwei sichere Räume.$$),

('eltern', 'beziehung',
 $$Dir sind Verbindung, Empathie und Mitgefühl wichtig — als Elternteil siehst du dein Kind damit wirklich.$$,
 $$Dir sind Verbindung, Empathie und Mitgefühl wichtig — als Elternteil siehst du dein Kind damit wirklich. Du spürst, was los ist, und hältst Kontakt, auch wenn's anstrengend wird.$$,
 $$Wenn die Schule deines Kindes mit Werten arbeitet, lernen auch Lehrkräfte, jedes Kind als Mensch zu sehen, und dein Kind erlebt diese Verbundenheit nicht nur zuhause.$$),

('eltern', 'veraenderung',
 $$Dir sind Entwicklung, Mut und Wandel wichtig — als Elternteil lässt du dein Kind damit wachsen.$$,
 $$Dir sind Entwicklung, Mut und Wandel wichtig — als Elternteil lässt du dein Kind damit wachsen. Du erkennst, wenn es Zeit ist loszulassen, Neues zuzulassen, anders zu sein als andere Familien.$$,
 $$Wenn die Schule deines Kindes mit Werten arbeitet, wird auch dort Raum für individuelles Wachstum geschaffen, dein Kind muss nicht in eine Schablone passen.$$),

('eltern', 'erfuellung',
 $$Dir sind Freiheit, Selbstbestimmung und Authentizität wichtig — als Elternteil lebst du deinem Kind damit ein authentisches Leben vor.$$,
 $$Dir sind Freiheit, Selbstbestimmung und Authentizität wichtig — als Elternteil lebst du deinem Kind damit ein authentisches Leben vor. Du machst nicht, was 'man halt so macht', sondern was wirklich zu dir passt.$$,
 $$Wenn die Schule deines Kindes mit Werten arbeitet, lernt dein Kind: Es ist okay, eigene Wege zu gehen.$$),

-- ── SONSTIGE ─────────────────────────────────────────────────────────
('sonstige', 'sicherheit',
 $$Dir sind Sicherheit, Struktur und klare Regeln wichtig — du gibst Struktur.$$,
 $$Dir sind Sicherheit, Struktur und klare Regeln wichtig — du gibst Struktur. Wo immer du bist, sorgst du für Verlässlichkeit und das Gefühl, dass man sich auf dich verlassen kann.$$,
 $$Wertearbeit verleiht deiner Klarheit Tiefe, du weißt nicht nur was gilt, sondern auch warum.$$),

('sonstige', 'beziehung',
 $$Dir sind Verbindung, Empathie und Mitgefühl wichtig — du verbindest Menschen.$$,
 $$Dir sind Verbindung, Empathie und Mitgefühl wichtig — du verbindest Menschen. Du siehst, wer eine Brücke braucht, vermittelst, hältst Gruppen zusammen. Du machst Gemeinschaft möglich.$$,
 $$Wertearbeit gibt deiner Verbundenheit Substanz, gemeinsame Werte machen aus Sympathie ein Fundament.$$),

('sonstige', 'veraenderung',
 $$Dir sind Entwicklung, Mut und Wandel wichtig — du gestaltest.$$,
 $$Dir sind Entwicklung, Mut und Wandel wichtig — du gestaltest. Wo andere abwarten, packst du an. Du siehst Möglichkeiten und scheust nicht das Risiko. Du bringst Bewegung.$$,
 $$Wertearbeit gibt deinem Wandel Richtung, Veränderung mit gemeinsamen Werten ist Entwicklung, nicht Aktionismus.$$),

('sonstige', 'erfuellung',
 $$Dir sind Freiheit, Selbstbestimmung und Authentizität wichtig — du folgst deinem Kompass.$$,
 $$Dir sind Freiheit, Selbstbestimmung und Authentizität wichtig — du folgst deinem Kompass. Du gehst nicht den Weg, den andere erwarten, sondern den, der zu dir passt.$$,
 $$Wertearbeit gibt deinem Sinn Resonanz, wenn andere ihre Werte auch kennen, findest du deine Leute.$$)

on conflict (role, type) do update set
  text        = excluded.text,
  text_teil_1 = excluded.text_teil_1,
  text_teil_2 = excluded.text_teil_2,
  updated_at  = now();


-- ─── 3. Verifikation ────────────────────────────────────────────────

select 'questions' as tabelle, count(*) as eintraege from public.minitest_questions
union all
select 'results', count(*) from public.minitest_results_text
union all
select 'tiebreakers', count(*) from public.minitest_tiebreakers;

-- Erwartet: questions=25, results=20, tiebreakers=6
