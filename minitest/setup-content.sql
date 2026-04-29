-- ════════════════════════════════════════════════════════════════════
-- VALUE SCHOOL MINITEST, Content-Tabellen Setup
-- Einmalig in Supabase SQL Editor ausführen
-- (https://app.supabase.com/project/iwsgkwmtsrqpqlahvrhl/sql)
-- ════════════════════════════════════════════════════════════════════

-- ─── TABELLEN ───────────────────────────────────────────────────────

create table if not exists public.minitest_questions (
  id              uuid primary key default gen_random_uuid(),
  question_id     integer not null,
  role            text not null,
  theme           text,
  scenario        text not null,
  answer_a_value  text not null,
  answer_a_action text not null,
  answer_a_type   text not null,
  answer_b_value  text not null,
  answer_b_action text not null,
  answer_b_type   text not null,
  updated_at      timestamptz default now(),
  unique(question_id, role)
);

create table if not exists public.minitest_results_text (
  id          uuid primary key default gen_random_uuid(),
  role        text not null,
  type        text not null,
  text        text not null,
  updated_at  timestamptz default now(),
  unique(role, type)
);

create table if not exists public.minitest_tiebreakers (
  id         uuid primary key default gen_random_uuid(),
  pair_key   text not null unique,
  scenario   text not null,
  a_value    text not null,
  a_action   text not null,
  a_type     text not null,
  b_value    text not null,
  b_action   text not null,
  b_type     text not null,
  updated_at timestamptz default now()
);

-- ─── RLS: Anon darf nur lesen, kein Insert/Update/Delete ────────────

alter table public.minitest_questions     enable row level security;
alter table public.minitest_results_text  enable row level security;
alter table public.minitest_tiebreakers   enable row level security;

drop policy if exists "anon can read" on public.minitest_questions;
drop policy if exists "anon can read" on public.minitest_results_text;
drop policy if exists "anon can read" on public.minitest_tiebreakers;

create policy "anon can read" on public.minitest_questions    for select using (true);
create policy "anon can read" on public.minitest_results_text for select using (true);
create policy "anon can read" on public.minitest_tiebreakers  for select using (true);

-- ─── INITIAL-DATEN: 25 FRAGEN (5 × 5 Rollen) ────────────────────────

insert into public.minitest_questions (question_id, role, theme, scenario, answer_a_value, answer_a_action, answer_a_type, answer_b_value, answer_b_action, answer_b_type) values

-- Frage 1: Bewährtes wird aufgeweicht
(1, 'schulleitung', $$Bewährtes wird aufgeweicht$$, $$In deinem Kollegium gibt es eine Lehrerin, die zunehmend von Vorgaben abweicht, kommt zu spät, gibt eigene Regeln raus, ignoriert Vereinbarungen. Das Kollegium wartet auf deine Reaktion. Was tust du?$$, $$Empathie$$, $$Ich frage vorsichtig nach, was eigentlich los ist.$$, 'beziehung', $$Zuverlässigkeit$$, $$Ich spreche die Person klar an und setze die Regeln durch.$$, 'sicherheit'),
(1, 'lehrkraft', $$Bewährtes wird aufgeweicht$$, $$Eine deiner Schülerinnen hat seit zwei Wochen ihre Hausaufgaben nicht abgegeben. Sie ist sonst absolut zuverlässig. Heute siehst du, wie sie in der Pause weint, willst sie ansprechen, sie wendet sich ab. Morgen ist Notenstichtag. Was tust du?$$, $$Empathie$$, $$Ich gebe ihr Zeit, lass die Hausaufgabe diesmal durchgehen. Die Note kann warten.$$, 'beziehung', $$Zuverlässigkeit$$, $$Ich notiere die fehlende Hausaufgabe wie bei allen anderen.$$, 'sicherheit'),
(1, 'schueler', $$Bewährtes wird aufgeweicht$$, $$In eurer Klasse gilt: Bei Gruppenarbeiten machen alle mit. Einer aus eurer Gruppe lässt euch wieder mal die ganze Arbeit machen. Was tust du?$$, $$Mitgefühl$$, $$Ich frag ihn allein, ob bei ihm gerade was nicht stimmt.$$, 'beziehung', $$Gerechtigkeit$$, $$Ich sage es offen in der Gruppe: So gehts nicht weiter.$$, 'sicherheit'),
(1, 'eltern', $$Bewährtes wird aufgeweicht$$, $$Bei euch gilt: 30 Minuten Bildschirmzeit am Tag. Dein Kind testet diese Regel ständig, argumentiert, verhandelt, weicht aus. Heute schon eine Stunde länger. Was tust du?$$, $$Empathie$$, $$Ich setze mich dazu und frage, was gerade los ist.$$, 'beziehung', $$Zuverlässigkeit$$, $$Ich nehme das Gerät weg und erinnere an unsere Vereinbarung.$$, 'sicherheit'),
(1, 'sonstige', $$Bewährtes wird aufgeweicht$$, $$In deinem Umfeld gibts eine eingespielte Routine, die alle gut finden. Eine neue Person bricht sie immer wieder, nicht böse, aber konsequent. Andere schauen zu dir. Was tust du?$$, $$Empathie$$, $$Ich suche das Gespräch und versuche zu verstehen, warum.$$, 'beziehung', $$Tradition$$, $$Ich spreche an: Die Routine gibts nicht ohne Grund.$$, 'sicherheit'),

-- Frage 2: Du siehst, wie jemand schlecht behandelt wird
(2, 'schulleitung', $$Du siehst, wie jemand schlecht behandelt wird$$, $$Du merkst seit Monaten: An eurer Schule entsteht eine schleichende Kultur, in der sich die starken Schüler über die schwächeren stellen. Drei Lehrer haben dich leise drauf angesprochen. Du könntest in der nächsten Schulkonferenz eine offene Aussprache ansetzen, riskierst aber Außenwirkung. Was tust du?$$, $$Rücksichtnahme$$, $$Ich arbeite leise: Einzelgespräche mit Klassenleitungen, gezielte Maßnahmen pro Klasse.$$, 'beziehung', $$Authentizität$$, $$Ich setze die Aussprache an und mache es zum Schulthema. Auch wenn der Ruf leidet.$$, 'erfuellung'),
(2, 'lehrkraft', $$Du siehst, wie jemand schlecht behandelt wird$$, $$Im Lehrerzimmer wird über einen Problemschüler gelästert, er kassiert wieder eine Vier, sei eh nicht zu retten. Du weißt: Sein Vater liegt schwer krank im Krankenhaus. Wenn du den Hintergrund ausplauderst, verletzt du seine Privatsphäre. Was tust du?$$, $$Rücksichtnahme$$, $$Ich werfe einen Satz ein, der lenkt: Vielleicht ist da was bei ihm los, was wir nicht wissen.$$, 'beziehung', $$Authentizität$$, $$Ich sage klar: So wollen wir nicht über Schüler reden. Punkt.$$, 'erfuellung'),
(2, 'schueler', $$Du siehst, wie jemand schlecht behandelt wird$$, $$In eurer Klassen-WhatsApp wird seit Tagen über ein Mädchen gelästert, das auf Klassenfahrt mit jemandem im Zelt war. Alle finden es witzig. Sie ist gar nicht in der Gruppe, sie weiß nichts. Wenn du dich einmischst, bist du nächste Woche dran. Was tust du?$$, $$Harmonie$$, $$Ich schweige in der Gruppe. Spreche stattdessen sie persönlich an.$$, 'beziehung', $$Authentizität$$, $$Ich schreibe in die Gruppe: Hört auf, das ist eklig.$$, 'erfuellung'),
(2, 'eltern', $$Du siehst, wie jemand schlecht behandelt wird$$, $$Beim Elternabend reden zwei Mütter abfällig über die Familie eines Kindes (Was wundert man sich, bei DENEN). Andere nicken. Wenn du widersprichst, machst du dir die einflussreichsten Eltern zum Feind, was deine Kinder spüren werden. Was tust du?$$, $$Rücksichtnahme$$, $$Ich höre zu, will den Abend nicht kippen. Sage es danach unter vier Augen.$$, 'beziehung', $$Authentizität$$, $$Ich sage laut: So reden wir hier nicht über Kinder oder Eltern. Bitte hört auf.$$, 'erfuellung'),
(2, 'sonstige', $$Du siehst, wie jemand schlecht behandelt wird$$, $$In deinem Umfeld wird offen abfällig über eine bestimmte Gruppe gesprochen (die lernen es eh nicht). Niemand widerspricht. Wenn du das tust, gibts einen langen Streit und du giltst danach als der eine, der das Politische macht. Was tust du?$$, $$Harmonie$$, $$Ich halte mich raus. Das kläre ich nicht in einer Tischrunde.$$, 'beziehung', $$Andersartigkeit$$, $$Ich sage offen, was ich denke. Auch wenn ich danach allein dastehe.$$, 'erfuellung'),

-- Frage 3: Generationenkonflikt
(3, 'schulleitung', $$Generationenkonflikt$$, $$Eine Gruppe junger Lehrerinnen schlägt vor, klassische Klassenarbeiten teilweise durch Lernportfolios zu ersetzen. Drei alteingesessene Kollegen lehnen ab: Das verwässert die Qualität. Eltern und Träger werden Fragen stellen. Was tust du?$$, $$Aufgeschlossenheit$$, $$Ich starte einen Pilot in zwei Klassen, hol die Alteingesessenen ins Pilot-Design rein.$$, 'veraenderung', $$Tradition$$, $$Ich vertage. Für so eine Veränderung müssen alle im Boot sein.$$, 'sicherheit'),
(3, 'lehrkraft', $$Generationenkonflikt$$, $$Eine sehr engagierte Schülerin will ihre Hausaufgabe lieber als Video machen statt als Aufsatz. Pädagogisch wäre das spannend. Aber: andere werden Warum darf SIE das? fragen, der Bewertungsaufwand explodiert, Kollegen gucken schief. Was tust du?$$, $$Mut$$, $$Ich lass sie das Video machen, dokumentiere es als Experiment, mache es in der Konferenz transparent.$$, 'veraenderung', $$Disziplin$$, $$Ich sage: Schriftlich ist die Aufgabe für alle, das hat Gründe.$$, 'sicherheit'),
(3, 'schueler', $$Generationenkonflikt$$, $$Beim Familienrat: Du willst dieses Jahr NICHT in den Sommerurlaub, sondern in ein Workcamp, etwas Eigenes machen. Deine Eltern reagieren skeptisch. Wenn du dich durchsetzt, gibts wochenlang schlechte Stimmung zuhause. Was tust du?$$, $$Mut$$, $$Ich erkläre, warum mir das wichtig ist, und sage: Ich mache das. Auch wenn ihr es nicht versteht.$$, 'veraenderung', $$Tradition$$, $$Ich gehe mit. Familienurlaub ist bei uns Tradition, das verschenken wir nicht.$$, 'sicherheit'),
(3, 'eltern', $$Generationenkonflikt$$, $$Dein 17-jähriger Sohn will nach dem Abi NICHT studieren, sondern Wwoofing durch Europa, dann Schreinerlehre. Verwandtschaft (und dein Partner) hat ihn auf BWL ausgerichtet. Wenn du ihn unterstützt, gehst du gegen die Familie. Was tust du?$$, $$Aufgeschlossenheit$$, $$Ich unterstütze seinen Weg offen, und nehm in Kauf, dass ich es der Verwandtschaft erkläre.$$, 'veraenderung', $$Tradition$$, $$Ich versuche, ihn auf den bewährten Weg zurückzuholen. BWL hält viele Türen offen.$$, 'sicherheit'),
(3, 'sonstige', $$Generationenkonflikt$$, $$In deinem Umfeld wird etwas Etabliertes radikal in Frage gestellt, wie ihr im Verein entscheidet, in der Firma arbeitet. Eine jüngere Generation will das ganz anders. Du wirst gefragt, wo du stehst. Was tust du?$$, $$Innovation$$, $$Ich stelle mich hinter das Neue und nehme die Reibung mit den Älteren in Kauf.$$, 'veraenderung', $$Tradition$$, $$Ich verteidige das Bewährte. Es gibt Gründe, warum wir das so machen.$$, 'sicherheit'),

-- Frage 4: Du bist mit deiner Situation nicht happy
(4, 'schulleitung', $$Du bist mit deiner Situation nicht happy$$, $$Du bist seit 8 Jahren Schulleitung. Die Schule läuft gut, die Zahlen stimmen. Aber etwas in dir sagt: Es ist nicht mehr DEIN Projekt. Eine andere Schule sucht eine Leitung, komplett neuer Aufbau. Spannender, aber alles hier, Team, Routinen, bliebe zurück. Was tust du?$$, $$Selbstverwirklichung$$, $$Ich höre auf mein Bauchgefühl. Wenn das Feuer hier weg ist, dann muss ich gehen.$$, 'erfuellung', $$Verantwortung$$, $$Ich krempel hier was um. 8 Jahre Aufbau wirft man nicht weg.$$, 'veraenderung'),
(4, 'lehrkraft', $$Du bist mit deiner Situation nicht happy$$, $$Seit 12 Jahren Lehrkraft. Du machst deinen Job gut. Aber: Seit Corona spürst du keine echte Verbindung mehr. Manchmal denkst du an Coaching, raus aus der Schule. Aber Familie, Gehalt, Kollegen brauchen dich. Was tust du?$$, $$Freiheit$$, $$Ich nehme mir die Frage ernst, was wirklich zu mir passt, auch wenn das Veränderung bedeutet.$$, 'erfuellung', $$Entwicklung$$, $$Ich gestalte meinen Job aktiv um. Bevor ich gehe, hol ich mir den Drive zurück.$$, 'veraenderung'),
(4, 'schueler', $$Du bist mit deiner Situation nicht happy$$, $$Du bist 15. Schule fühlt sich gerade leer an. Noten okay, Freunde da, aber irgendwas fehlt. Wenn du mit deinen Eltern darüber redest, sagen sie: Das ist die Pubertät, das geht vorbei. Was tust du?$$, $$Selbstverwirklichung$$, $$Ich nehm die Sache selbst in die Hand, suche raus was MIR was bedeutet.$$, 'erfuellung', $$Spontaneität$$, $$Ich probier was Neues aus, andere Hobbys, andere Leute, raus aus der Routine.$$, 'veraenderung'),
(4, 'eltern', $$Du bist mit deiner Situation nicht happy$$, $$Seit 12 Jahren Elternteil. Es funktioniert alles. Aber du merkst, dass du als Mensch kaum noch vorkommst. Wenn du dich fragst wer bin ich noch außerhalb dieser Rollen?, kommt nicht viel. Was tust du?$$, $$Gelassenheit$$, $$Ich höre auf mich, frage was ich für MICH brauche, nehme mir konsequent Zeit dafür.$$, 'erfuellung', $$Entwicklung$$, $$Ich gestalte meinen Alltag aktiv um, baue neue Routinen ein, suche Neues was mich nährt.$$, 'veraenderung'),
(4, 'sonstige', $$Du bist mit deiner Situation nicht happy$$, $$Seit Monaten merkst du: Dein Leben ist nicht rund. Es funktioniert alles, Job, Beziehungen, Wohnen. Aber etwas Zentrales fehlt. Du sitzt manchmal abends da und fragst dich: Ist das alles? Was tust du?$$, $$Selbstverwirklichung$$, $$Ich höre genauer auf mich, was wirklich passt, was mich nährt, was Sinn ergibt.$$, 'erfuellung', $$Verantwortung$$, $$Ich nehme das Heft in die Hand und gestalte aktiv um, was auch immer dran ist.$$, 'veraenderung'),

-- Frage 5: Konflikt mit jemandem in deinem Umfeld
(5, 'schulleitung', $$Konflikt mit jemandem in deinem Umfeld$$, $$Der Schulträger teilt dir mit: Eure Personalmittel werden nächstes Jahr gekürzt, du sollst eine Stelle einsparen. Du könntest die Streichung durchwinken und im Kollegium politisch mildern, oder vor dem Träger offen Position beziehen. Politisch riskant. Was tust du?$$, $$Loyalität$$, $$Ich versuche, die Streichung intern abzufedern und investiere meine Energie ins Kollegium.$$, 'beziehung', $$Verantwortung$$, $$Ich beziehe öffentlich Position gegen den Träger, auch wenns mich politisch was kostet.$$, 'veraenderung'),
(5, 'lehrkraft', $$Konflikt mit jemandem in deinem Umfeld$$, $$Du hast einen langen Konflikt mit einem Elternteil über die Bewertung des Kindes. Es eskaliert: Schriftliche Beschwerde an die Schulleitung, du seist voreingenommen. Du weißt: Du hast korrekt bewertet, aber dieser Konflikt zieht sich monatelang. Was tust du?$$, $$Toleranz$$, $$Ich treffe mich mit den Eltern, höre genau zu, suche einen Weg, auch wenn ich Kompromisse machen muss.$$, 'beziehung', $$Verantwortung$$, $$Ich bleibe bei meiner Einschätzung. Würde ich nachgeben, würden andere Eltern denken: Wer laut ist, bekommt Recht.$$, 'veraenderung'),
(5, 'schueler', $$Konflikt mit jemandem in deinem Umfeld$$, $$Du hast einen schweren Konflikt mit deiner besten Freundin / deinem besten Freund. Es geht um etwas Grundlegendes, ihr habt unterschiedliche Werte. Eine Stimme sagt: Lass die Freundschaft retten. Eine andere: Vielleicht wachsen wir auseinander. Was tust du?$$, $$Treue$$, $$Ich mache den ersten Schritt, kämpfe um die Freundschaft. Wir kennen uns zu lange.$$, 'beziehung', $$Mut$$, $$Ich sage, was Sache ist, und akzeptiere, wenn das die Freundschaft beendet.$$, 'veraenderung'),
(5, 'eltern', $$Konflikt mit jemandem in deinem Umfeld$$, $$Seit Monaten Spannung mit deinem Partner über die Erziehung eures Kindes. Beim letzten Streit habt ihr euch tief verletzt. Bald ist Eltern-Sprechstunde, und ihr werdet vor der Lehrerin gemeinsam darstellen müssen, wie ihr zuhause vorgeht. Was tust du?$$, $$Toleranz$$, $$Ich suche einen gemeinsamen Weg, der für uns beide tragbar ist, auch wenn ich Abstriche machen muss.$$, 'beziehung', $$Verantwortung$$, $$Ich beziehe Position für meinen Erziehungsstil, auch wenns neuen Streit gibt.$$, 'veraenderung'),
(5, 'sonstige', $$Konflikt mit jemandem in deinem Umfeld$$, $$Du hast ein dauerhaftes Reibungsverhältnis mit jemandem in deinem Umfeld, Verein, Freundeskreis, Familie. Es belastet dich seit Monaten. Du könntest weiter aushalten oder die Situation aufbrechen. Was tust du?$$, $$Toleranz$$, $$Ich suche das Gespräch, will die Verbindung halten und einen Weg finden, der für beide trägt.$$, 'beziehung', $$Verantwortung$$, $$Ich bringe es auf den Punkt, auch wenn die Beziehung das nicht überlebt.$$, 'veraenderung')

on conflict (question_id, role) do update set
  theme = excluded.theme,
  scenario = excluded.scenario,
  answer_a_value = excluded.answer_a_value,
  answer_a_action = excluded.answer_a_action,
  answer_a_type = excluded.answer_a_type,
  answer_b_value = excluded.answer_b_value,
  answer_b_action = excluded.answer_b_action,
  answer_b_type = excluded.answer_b_type,
  updated_at = now();

-- ─── INITIAL-DATEN: 20 ERGEBNISTEXTE (4 Typen × 5 Rollen) ───────────

insert into public.minitest_results_text (role, type, text) values
('schulleitung', 'sicherheit',   $$Als Schulleitung mit Sicherheits-Wertetyp gibst du deinem Kollegium und deiner Schule Halt. Du sorgst für klare Strukturen, verlässliche Prozesse und eine Schule, auf die Eltern und Träger zählen können. Deine Stärke: Stabilität in unsicheren Zeiten. Wertearbeit gibt deiner Stabilität Tiefe, nicht nur Regeln, sondern gemeinsam getragene Werte.$$),
('schulleitung', 'beziehung',    $$Als Schulleitung mit Beziehungs-Wertetyp hältst du dein Kollegium zusammen. Du siehst die Menschen hinter den Rollen, vermittelst zwischen Lagern und schaffst eine Schule, in der man sich aufgehoben fühlt. Deine Stärke: Verbundenheit. Wertearbeit gibt deiner Wärme Substanz, gemeinsame Werte machen aus Beziehungen ein Tragwerk.$$),
('schulleitung', 'veraenderung', $$Als Schulleitung mit Veränderungs-Wertetyp treibst du deine Schule voran. Du erkennst, was geht, packst neue Ideen an und scheust den Wandel nicht. Deine Stärke: Mut zur Veränderung. Wertearbeit gibt deinem Wandel Richtung, gemeinsame Werte sorgen dafür, dass Veränderung nicht spaltet, sondern verbindet.$$),
('schulleitung', 'erfuellung',   $$Als Schulleitung mit Erfüllungs-Wertetyp führst du authentisch, aus innerer Klarheit. Du gehst nicht den Weg, den andere erwarten, sondern den, der dir und deiner Schule entspricht. Deine Stärke: Sinnführung. Wertearbeit gibt deiner Sinnsuche Form, wenn alle ihre Werte kennen, finden mehr Menschen ihren Sinn an deiner Schule.$$),

('lehrkraft', 'sicherheit',   $$Als Lehrkraft mit Sicherheits-Wertetyp gibst du deinen Schülern Halt. Du sorgst für klare Regeln, verlässliche Strukturen und einen Klassenraum, in dem Lernen möglich ist. Deine Stärke: Verlässlichkeit. Wertearbeit gibt deiner Disziplin Tiefe, Regeln, die alle verstehen und tragen, statt Regeln, die ausgehalten werden.$$),
('lehrkraft', 'beziehung',    $$Als Lehrkraft mit Beziehungs-Wertetyp siehst du jeden einzelnen Schüler. Du baust Vertrauen auf, vermittelst bei Konflikten und schaffst eine Klasse, in der niemand übersehen wird. Deine Stärke: Verbundenheit. Wertearbeit gibt deiner Empathie Werkzeug, eine gemeinsame Werte-Sprache macht aus deiner Stärke das Fundament der ganzen Schule.$$),
('lehrkraft', 'veraenderung', $$Als Lehrkraft mit Veränderungs-Wertetyp probierst du Neues. Du holst frische Methoden ins Klassenzimmer, traust dich auch da, wo andere bremsen. Deine Stärke: Innovation. Wertearbeit gibt deinem Wandel Anker, wenn das Kollegium gemeinsame Werte teilt, wird aus deinen Experimenten gemeinsame Schulentwicklung.$$),
('lehrkraft', 'erfuellung',   $$Als Lehrkraft mit Erfüllungs-Wertetyp unterrichtest du authentisch. Du machst nicht, was man halt so macht, sondern was, woran du wirklich glaubst. Deine Stärke: Echtheit. Wertearbeit gibt deiner Authentizität Resonanz, wenn alle ihre Werte kennen, dürfen mehr Lehrkräfte echt sein.$$),

('schueler', 'sicherheit',   $$Du bist Sicherheits-Typ. Du suchst Halt. Du magst klare Regeln, verlässliche Menschen und brauchst Strukturen, in denen du dich orientieren kannst. Deine Stärke: Du gibst anderen Halt, weil du selbst gut geerdet bist. Wenn deine Schule mit Werten arbeitet, lernst du nicht nur Regeln auswendig, sondern verstehst, wofür sie da sind.$$),
('schueler', 'beziehung',    $$Du bist Beziehungs-Typ. Menschen sind dein wichtigster Anker. Du spürst Stimmungen, vermittelst bei Streit und kämpfst für deine Freunde. Deine Stärke: Wenn du da bist, fühlt sich keine:r allein. Wenn deine Schule mit Werten arbeitet, lernst du, was Verbundenheit wirklich bedeutet, und dass auch andere darauf angewiesen sind.$$),
('schueler', 'veraenderung', $$Du bist Veränderungs-Typ. Du willst was bewegen. Du erkennst, was nicht mehr passt, und hast den Mut, es anzusprechen. Deine Stärke: Du bringst frischen Wind. Wenn deine Schule mit Werten arbeitet, kannst du deinen Wandel-Drive auf etwas richten, was wirklich zählt, statt im Konflikt mit Älteren zu zerschellen.$$),
('schueler', 'erfuellung',   $$Du bist Erfüllungs-Typ. Du folgst deinem Bauch. Du machst nicht mit, nur weil alle es machen, du suchst, was sich wirklich richtig anfühlt. Deine Stärke: Authentizität. Wenn deine Schule mit Werten arbeitet, findest du andere, die genauso ticken, und musst dich nicht mehr verstellen.$$),

('eltern', 'sicherheit',   $$Als Elternteil mit Sicherheits-Wertetyp gibst du deinem Kind Halt. Du sorgst für klare Regeln, verlässlichen Alltag und ein Zuhause, in dem dein Kind weiß, woran es ist. Deine Stärke: Stabilität als Boden. Wenn die Schule deines Kindes mit Werten arbeitet, ergänzen sich euer Halt zuhause und die Verlässlichkeit in der Schule, dein Kind hat ZWEI sichere Räume.$$),
('eltern', 'beziehung',    $$Als Elternteil mit Beziehungs-Wertetyp siehst du dein Kind. Wirklich. Du spürst, was los ist, und hältst Kontakt, auch wenns anstrengend wird. Deine Stärke: Verbindung als Boden. Wenn die Schule deines Kindes mit Werten arbeitet, lernen auch Lehrkräfte, jedes Kind als Mensch zu sehen, und dein Kind erlebt diese Verbundenheit nicht nur zuhause.$$),
('eltern', 'veraenderung', $$Als Elternteil mit Veränderungs-Wertetyp lässt du dein Kind wachsen. Du erkennst, wenn es Zeit ist loszulassen, Neues zuzulassen, anders zu sein als andere Familien. Deine Stärke: Du gibst Raum für Entwicklung. Wenn die Schule deines Kindes mit Werten arbeitet, wird auch dort Raum für individuelles Wachstum geschaffen, dein Kind muss nicht in eine Schablone passen.$$),
('eltern', 'erfuellung',   $$Als Elternteil mit Erfüllungs-Wertetyp lebst du deinem Kind ein authentisches Leben vor. Du machst nicht, was man halt so macht, sondern was wirklich zu dir passt. Deine Stärke: Du zeigst, wie ein selbstbestimmtes Leben aussieht. Wenn die Schule deines Kindes mit Werten arbeitet, lernt dein Kind: Es ist okay, eigene Wege zu gehen.$$),

('sonstige', 'sicherheit',   $$Du bist Sicherheits-Typ. Du gibst Struktur. Wo immer du bist, sorgst du für Verlässlichkeit, klare Regeln und das Gefühl, dass man sich auf dich verlassen kann. Deine Stärke: Stabilität für andere. Wertearbeit verleiht deiner Klarheit Tiefe, du weißt nicht nur WAS gilt, sondern auch WARUM.$$),
('sonstige', 'beziehung',    $$Du bist Beziehungs-Typ. Du verbindest Menschen. Du siehst, wer eine Brücke braucht, vermittelst, hältst Gruppen zusammen. Deine Stärke: Du machst Gemeinschaft möglich. Wertearbeit gibt deiner Verbundenheit Substanz, gemeinsame Werte machen aus Sympathie ein Fundament.$$),
('sonstige', 'veraenderung', $$Du bist Veränderungs-Typ. Du gestaltest. Wo andere abwarten, packst du an. Du siehst Möglichkeiten und scheust nicht das Risiko. Deine Stärke: Du bringst Bewegung. Wertearbeit gibt deinem Wandel Richtung, Veränderung mit gemeinsamen Werten ist Entwicklung, nicht Aktionismus.$$),
('sonstige', 'erfuellung',   $$Du bist Erfüllungs-Typ. Du folgst deinem Kompass. Du gehst nicht den Weg, den andere erwarten, sondern den, der zu dir passt. Deine Stärke: Authentizität. Wertearbeit gibt deinem Sinn Resonanz, wenn andere ihre Werte auch kennen, findest du deine Leute.$$)

on conflict (role, type) do update set
  text = excluded.text,
  updated_at = now();

-- ─── INITIAL-DATEN: 6 STICHFRAGEN ───────────────────────────────────

insert into public.minitest_tiebreakers (pair_key, scenario, a_value, a_action, a_type, b_value, b_action, b_type) values
('beziehung-sicherheit',     $$Letzte Stichfrage: Du musst gerade entscheiden zwischen einer klaren Regel und einer mitfühlenden Ausnahme. Was wiegt für dich am Ende mehr?$$, $$Empathie$$, $$Mitgefühl geht vor Regel, der Mensch zuerst.$$, 'beziehung', $$Zuverlässigkeit$$, $$Klare Regeln geben Halt, auch wenns wehtut.$$, 'sicherheit'),
('sicherheit-veraenderung',  $$Letzte Stichfrage: Etwas Bewährtes funktioniert solide, aber nicht mehr ganz zeitgemäß. Was wiegt für dich am Ende mehr?$$, $$Tradition$$, $$Was sich bewährt hat, hat seinen Wert, bewahren.$$, 'sicherheit', $$Mut$$, $$Stillstand ist Rückschritt, verändern, auch wenns risikoreich ist.$$, 'veraenderung'),
('erfuellung-sicherheit',    $$Letzte Stichfrage: Du sollst eine Pflicht erfüllen, die dir aber innerlich nicht entspricht. Was wiegt für dich am Ende mehr?$$, $$Disziplin$$, $$Verlässlichkeit zählt, auch wenns mir nicht entspricht.$$, 'sicherheit', $$Authentizität$$, $$Wenns mir nicht entspricht, kann ich es nicht ehrlich tun.$$, 'erfuellung'),
('beziehung-veraenderung',   $$Letzte Stichfrage: Du willst eine Beziehung schützen, aber dafür müsstest du einen Wandel verhindern. Was wiegt für dich am Ende mehr?$$, $$Loyalität$$, $$Verbindungen halten zählt mehr, Stabilität für die Menschen.$$, 'beziehung', $$Verantwortung$$, $$Wandel ist nötig, auch wenn Beziehungen darunter leiden.$$, 'veraenderung'),
('beziehung-erfuellung',     $$Letzte Stichfrage: Du musst zwischen einer wichtigen Beziehung und deinem Bauchgefühl wählen. Was wiegt für dich am Ende mehr?$$, $$Treue$$, $$Verbindungen sind das Wichtigste, sie halten mich.$$, 'beziehung', $$Authentizität$$, $$Ich kann nur ich sein, wenn ich meinem Gefühl folge.$$, 'erfuellung'),
('erfuellung-veraenderung',  $$Letzte Stichfrage: Du könntest aktiv die Welt um dich verändern oder erstmal in dich gehen und herausfinden, was wirklich zu dir passt. Was wiegt für dich am Ende mehr?$$, $$Selbstverwirklichung$$, $$Ich muss erst wissen, wer ich bin, dann gestalte ich.$$, 'erfuellung', $$Verantwortung$$, $$Ich packe an und gestalte aktiv. Selbsterkenntnis kommt im Tun.$$, 'veraenderung')

on conflict (pair_key) do update set
  scenario = excluded.scenario,
  a_value = excluded.a_value,
  a_action = excluded.a_action,
  a_type = excluded.a_type,
  b_value = excluded.b_value,
  b_action = excluded.b_action,
  b_type = excluded.b_type,
  updated_at = now();

-- ════════════════════════════════════════════════════════════════════
-- FERTIG. Du kannst die Texte jetzt im Supabase Table Editor editieren.
-- (Project → Table Editor → minitest_questions / minitest_results_text / minitest_tiebreakers)
-- ════════════════════════════════════════════════════════════════════
