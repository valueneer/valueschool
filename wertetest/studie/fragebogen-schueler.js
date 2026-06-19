/* ════════════════════════════════════════════════════════════════════
   FRAGEBOGEN SCHÜLER:INNEN
   Wirksamkeitsstudie Uni Osnabrück — Version v1-2026-06
   1:1 abgebildet nach PDF "Fragebogen für SchülerInnen aktuelle Version"
   ════════════════════════════════════════════════════════════════════ */

window.FRAGEBOGEN_SCHUELER = {
  meta: {
    rolle: "schueler",
    version: "v1-2026-06",
    titel: "Fragebogen für SchülerInnen",
    duration: "10–15 Minuten",
  },

  intro: {
    titel: "Hi! Schön, dass du dabei bist.",
    text:
      "Wir möchten dir heute ein paar Fragen zum Thema „Werte“ stellen. " +
      "Vielleicht weißt du gar nicht so richtig, was Werte sind. Kein Problem — " +
      "darum kümmern wir uns. Bevor wir richtig reinstarten, möchten wir dir " +
      "ein paar Fragen zu dir und deiner Schule stellen. Antworte gerne ehrlich " +
      "und spontan.\n\n" +
      "Es gibt keine „richtigen“ oder „falschen“ und keine „guten“ oder " +
      "„schlechten“ Antworten.\n\n" +
      "Vielen Dank, dass du mit dabei bist. Du bist WERTvoll!",
  },

  pseudonym_intro: {
    titel: "Dein persönlicher Code",
    text:
      "In ein paar Wochen möchten wir dir gerne nochmal die gleichen Fragen " +
      "stellen. Damit wir deine Antworten von heute mit denen vom nächsten Mal " +
      "zusammenfügen können, baust du jetzt einen persönlichen Code, den nur " +
      "du kennst.\n\n" +
      "Keine Sorge — wir können daraus nicht herausfinden, wer du bist.",
  },

  sections: [
    {
      id: "werte",
      titel: "Werte",
      intro: "Jetzt geht's los! Wir möchten verstehen, was du über Werte denkst.",
      items: [
        {
          id: "werte_kennst_du",
          type: "open",
          prompt: "Schreib erst mal auf, welche Werte du überhaupt kennst.",
          placeholder: "Schreib einfach drauflos…",
        },
      ],
    },

    {
      id: "rolle_werte_schulalltag",
      titel: "Werte im Schulalltag",
      intro:
        "Schau dir diese Werte mal an. Was kommt dir da aus dem Schulalltag bekannt vor?",
      sliderHints: { left: "überhaupt nicht", right: "vollständig" },
      items: [
        { id: "rolle_authentizitaet", type: "slider100", prompt: "Authentizität",
          help: "Wenn du so sein kannst, wie du bist, ohne dich zu verstellen" },
        { id: "rolle_empathie", type: "slider100", prompt: "Empathie",
          help: "Wenn du verstehst, wie es anderen geht" },
        { id: "rolle_harmonie", type: "slider100", prompt: "Harmonie",
          help: "Wenn sich alle vertragen und es wenig Streit gibt" },
        { id: "rolle_integritaet", type: "slider100", prompt: "Integrität",
          help: "Du tust das Richtige und bist ehrlich, auch wenn niemand zuschaut" },
        { id: "rolle_sicherheit", type: "slider100", prompt: "Sicherheit",
          help: "Wenn du dich geschützt fühlst und keine Angst hast" },
        { id: "rolle_freude", type: "slider100", prompt: "Freude",
          help: "Wenn du gerne etwas machst" },
        { id: "rolle_verbindung", type: "slider100", prompt: "Verbindung",
          help: "Wenn du das Gefühl hast, dazuzugehören" },
        { id: "rolle_respekt", type: "slider100", prompt: "Respekt",
          help: "Wenn Menschen fair miteinander umgehen und sich aufeinander verlassen können" },
        { id: "rolle_wertschaetzung", type: "slider100", prompt: "Wertschätzung",
          help: "Wenn du das Gefühl hast, dass andere dich und das, was du tust, anerkennen" },
        { id: "rolle_wirksamkeit", type: "slider100", prompt: "Wirksamkeit",
          help: "Wenn du merkst, dass du etwas bewirkst und einen Unterschied machst" },
      ],
    },

    {
      id: "werte_in_schule",
      titel: "Werte in der Schule",
      items: [
        {
          id: "werte_schon_behandelt",
          type: "slider100",
          prompt: "Denk mal zurück. Wurde das Thema „Werte“ in der Schule schon mal behandelt?",
          sliderHints: { left: "Nein, noch nie", right: "Ja, schon oft" },
        },
        {
          id: "werte_lernen_bringt",
          type: "slider100",
          prompt: "Hast du ein Gefühl, was das Lernen über Werte in der Schule bringen könnte?",
          sliderHints: { left: "nichts", right: "Richtig viel" },
        },
      ],
    },

    {
      id: "psy_sicherheit",
      titel: "Sicherheit in deiner Schule",
      intro: "Schau über die folgenden Sätze. Wo stimmst du zu und wo nicht?",
      likertHints: { left: "stimme ganz und gar nicht zu", right: "stimme vollkommen zu" },
      items: [
        { id: "ps_probleme_offen", type: "likert7", prompt:
          "In meiner Schule kann ich auch Probleme und schwierige Themen offen ansprechen." },
        { id: "ps_niemand_schadet", type: "likert7", prompt:
          "Niemand in meiner Schule würde absichtlich etwas tun, das mir schadet." },
        { id: "ps_fehler_spaeter", type: "likert7", prompt:
          "Wenn man in meiner Schule einen Fehler macht, sprechen andere oft noch später darüber." },
        { id: "ps_risiko_einzugehen", type: "likert7", prompt:
          "In meiner Schule kann ich mich trauen, ein persönliches Risiko einzugehen." },
        { id: "ps_andere_ausgeschlossen", type: "likert7", prompt:
          "Manche Mitschüler:innen schließen Kinder aus, die anders sind." },
        { id: "ps_hilfe_bitten", type: "likert7", prompt:
          "In meiner Schule ist es schwierig, andere um Hilfe zu bitten." },
        { id: "ps_faehigkeiten_genutzt", type: "likert7", prompt:
          "In meiner Schule werden meine Fähigkeiten und Begabungen wertgeschätzt und genutzt." },
      ],
    },

    {
      id: "klima",
      titel: "Klima in der Schule",
      likertHints: { left: "trifft überhaupt nicht zu", right: "trifft vollkommen zu" },
      items: [
        { id: "klima_offen_vertrauen", type: "likert7", prompt:
          "In meiner Schule wird offen miteinander gesprochen und man kann sich gegenseitig vertrauen." },
        { id: "klima_gegenseitig_helfen", type: "likert7", prompt:
          "In meiner Schule wird sich gegenseitig geholfen." },
        { id: "klima_ueber_probleme", type: "likert7", prompt:
          "In meiner Schule wird über Probleme oder Sorgen gesprochen." },
        { id: "klima_gleiche_regeln", type: "likert7", prompt:
          "In meiner Schule beachten alle die gleichen Regeln." },
      ],
    },

    {
      id: "stress",
      titel: "Stress",
      sliderHints: { left: "überhaupt nicht gestresst", right: "maximal gestresst" },
      items: [
        { id: "stress_eigen", type: "slider100", prompt:
          "Wie stark fühlst du dich aktuell von der Schule gestresst?" },
        { id: "stress_andere", type: "slider100", prompt:
          "Wie stark, glaubst du, sind die anderen Schülerinnen und Schüler gestresst?" },
      ],
    },

    {
      id: "lebenszufriedenheit",
      titel: "Wie zufrieden bist du mit deinem Leben?",
      intro: "Inwiefern stimmst du den folgenden Aussagen zu?",
      likertHints: { left: "trifft überhaupt nicht zu", right: "trifft vollkommen zu" },
      items: [
        { id: "lz_so_wie_ich_wuensche", type: "likert7", prompt:
          "Mein Leben ist meistens so, wie ich es mir wünsche." },
        { id: "lz_vieles_brauche", type: "likert7", prompt:
          "In meinem Leben habe ich vieles, was ich brauche und mir wichtig ist." },
        { id: "lz_zufrieden", type: "likert7", prompt:
          "Ich bin mit meinem Leben zufrieden." },
        { id: "lz_dinge_erreicht", type: "likert7", prompt:
          "Bisher habe ich viele Dinge erreicht, die mir wichtig sind." },
        { id: "lz_nichts_aendern", type: "likert7", prompt:
          "Auch wenn ich es könnte, würde ich in meinem Leben nichts ändern." },
      ],
    },

    {
      id: "schul_wohlbefinden",
      titel: "Wohlbefinden in der Schule",
      intro: "Was sagst du zu folgenden Aussagen?",
      likertHints: { left: "stimmt gar nicht", right: "stimmt genau", labels: ["stimmt gar nicht", "stimmt eher nicht", "stimmt eher", "stimmt genau"] },
      items: [
        { id: "sw_gerne_schule", type: "likert4", prompt: "Ich bin gerne in dieser Schule." },
        { id: "sw_unterricht_nicht_verzichten", type: "likert4", prompt:
          "Auf den Unterricht in der Schule möchte ich nicht mehr verzichten." },
        { id: "sw_fuehle_mich_wohl", type: "likert4", prompt: "In der Schule fühle ich mich wohl." },
        { id: "sw_fuehle_mich_sicher", type: "likert4", prompt: "In der Schule fühle ich mich sicher." },
        { id: "sw_gerne_mit_mitschuelern", type: "likert4", prompt:
          "In der Schule bin ich gerne mit meinen Mitschülerinnen und Mitschülern zusammen." },
      ],
    },

    {
      id: "psy_wohlbefinden",
      titel: "Die letzten Wochen",
      intro: "Wie bist du in den letzten Wochen in der Schule zurechtgekommen? In den letzten Wochen…",
      likertHints: { labels: ["nie", "selten", "manchmal", "oft", "immer"] },
      items: [
        { id: "pw_aufgaben_geschafft", type: "likert5", prompt: "… habe ich die Aufgaben in der Schule gut geschafft." },
        { id: "pw_konzentrieren", type: "likert5", prompt: "… konnte ich mich gut konzentrieren." },
        { id: "pw_sorgen_zukunft", type: "likert5", prompt: "… habe ich mir Sorgen um meine Zukunft gemacht." },
        { id: "pw_angst_noten", type: "likert5", prompt: "… hatte ich Angst vor schlechten Noten." },
        { id: "pw_lernen_zurechtgekommen", type: "likert5", prompt: "… bin ich mit dem Lernen allgemein gut zurechtgekommen." },
        { id: "pw_gelacht_spass", type: "likert5", prompt: "… habe ich viel gelacht und Spaß gehabt." },
        { id: "pw_langweilig", type: "likert5", prompt: "… war mir langweilig." },
        { id: "pw_allein_gefuehlt", type: "likert5", prompt: "… habe ich mich allein gefühlt." },
        { id: "pw_angst_gehabt", type: "likert5", prompt: "… habe ich Angst gehabt." },
      ],
    },

    {
      id: "selbstwirksamkeit",
      titel: "Was du dir zutraust",
      intro: "Hier geht es um deine persönlichen Einschätzungen und Gefühle in Bezug auf Herausforderungen in der Schule. Bitte kreuze das Kästchen an, das am ehesten zutrifft.",
      likertHints: { labels: ["trifft gar nicht zu", "trifft wenig zu", "trifft etwas zu", "trifft ziemlich zu", "trifft vollkommen zu"] },
      items: [
        { id: "sw_faehigkeiten_verlassen", type: "likert5", prompt:
          "In schwierigen Situationen kann ich mich auf meine Fähigkeiten verlassen." },
        { id: "sw_probleme_eigener_kraft", type: "likert5", prompt:
          "Die meisten Probleme kann ich aus eigener Kraft gut meistern." },
        { id: "sw_anstrengende_aufgaben", type: "likert5", prompt:
          "Auch anstrengende und komplizierte Aufgaben kann ich in der Regel gut lösen." },
      ],
    },

    {
      id: "demokratie",
      titel: "Gesellschaft",
      sliderHints: { left: "überhaupt nicht wertvoll", right: "maximal wertvoll" },
      items: [
        { id: "dem_diversitaet", type: "slider100", prompt:
          "Wie wertvoll findest du es, dass unterschiedliche Menschen in einer Gesellschaft zusammenleben und dazugehören?" },
        { id: "dem_miteinander", type: "slider100", prompt:
          "Wie wertvoll findest du es, dass Menschen respektvoll miteinander umgehen, ihre Meinung sagen dürfen und alle die gleichen Rechte haben?" },
      ],
    },

    {
      id: "demografie",
      titel: "Noch ein paar Angaben zu dir",
      items: [
        {
          id: "buecher",
          type: "radio",
          prompt: "Wie viele Bücher gibt es ungefähr bei dir zu Hause?",
          options: [
            { value: 1, label: "Keine oder nur sehr wenige (0–10 Bücher)" },
            { value: 2, label: "Genug, um ein Regalbrett zu füllen (11–25 Bücher)" },
            { value: 3, label: "Genug, um ein Regal zu füllen (26–100 Bücher)" },
            { value: 4, label: "Genug, um zwei Regale zu füllen (101–200 Bücher)" },
            { value: 5, label: "Genug, um drei oder mehr Regale zu füllen (mehr als 200 Bücher)" },
          ],
        },
        {
          id: "geschlecht",
          type: "radio",
          prompt: "Welchem Geschlecht fühlst du dich zugehörig?",
          options: [
            { value: 1, label: "weiblich" },
            { value: 2, label: "männlich" },
            { value: 3, label: "divers" },
            { value: -1, label: "keine Angabe" },
          ],
        },
        {
          id: "alter",
          type: "number",
          prompt: "Wie alt bist du?",
          min: 6, max: 25, placeholder: "z.B. 12",
        },
      ],
    },
  ],

  outro: {
    titel: "Geschafft!",
    text: "Danke, dass du den Fragebogen ausgefüllt hast. Jetzt geht's weiter mit dem Werte-Spiel.",
  },
};
