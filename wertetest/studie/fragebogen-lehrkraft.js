/* ════════════════════════════════════════════════════════════════════
   FRAGEBOGEN LEHRKRÄFTE
   Wirksamkeitsstudie Uni Osnabrück — Version v1-2026-06
   1:1 abgebildet nach PDF "Fragebogen für Lehrkräfte aktuelle Version"
   Ausfülldauer: 15–20 Minuten
   ════════════════════════════════════════════════════════════════════ */

window.FRAGEBOGEN_LEHRKRAFT = {
  meta: {
    rolle: "lehrkraft",
    version: "v1-2026-06",
    titel: "Fragebogen für Lehrkräfte",
    duration: "15–20 Minuten",
  },

  intro: {
    titel: "Liebe Lehrkraft, schön dass du dabei bist.",
    text:
      "Im Rahmen des Value-School-Projekts untersuchen wir die Rolle von Werten " +
      "in der Schule. Das Ausfüllen dieses Fragebogens dauert 15 bis 20 Minuten.\n\n" +
      "Die Daten werden anonymisiert verarbeitet, sodass Dritte nicht auf dich " +
      "als Person schließen können. Bitte beantworte die Fragen so ehrlich und " +
      "spontan wie möglich. Es gibt keine „richtigen“ oder „falschen“ und keine " +
      "„guten“ oder „schlechten“ Antworten.\n\n" +
      "Vielen Dank, dass du teilnimmst.",
  },

  pseudonym_intro: {
    titel: "Dein persönlicher Teilnahme-Code",
    text:
      "Da wir auch im Anschluss an das Projekt eine zweite Befragung durchführen " +
      "möchten und damit wir die Messzeitpunkte miteinander verbinden können, " +
      "vergibst du dir jetzt einen persönlichen sechsstelligen Code.\n\n" +
      "Bitte alle Buchstaben kleinschreiben.",
  },

  sections: [
    {
      id: "werte",
      titel: "Werte",
      intro: "Wir möchten verstehen, was du über Werte denkst.",
      items: [
        {
          id: "werte_kennst_du",
          type: "open",
          prompt: "Welche Werte kennst du?",
          placeholder: "Schreib einfach drauflos…",
        },
      ],
    },

    {
      id: "rolle_werte_geleb",
      titel: "Werte in eurer Schule",
      intro:
        "Bitte schätze ein, wie jeder einzelne Wert in eurer Schule bzw. von den Menschen in der Schule gelebt wird.",
      sliderHints: { left: "überhaupt nicht", right: "vollständig" },
      items: [
        { id: "rolle_authentizitaet", type: "slider100", prompt: "Authentizität",
          help: "Man selbst sein und so handeln, wie es zu einem passt." },
        { id: "rolle_empathie", type: "slider100", prompt: "Empathie",
          help: "Sich in die Lage anderer Personen hineinversetzen und ihre Gefühle verstehen können." },
        { id: "rolle_harmonie", type: "slider100", prompt: "Harmonie",
          help: "Vermeidung von Streit und Konflikten." },
        { id: "rolle_integritaet", type: "slider100", prompt: "Integrität",
          help: "In Übereinstimmung mit den eigenen Werten und Gefühlen handeln." },
        { id: "rolle_leichtigkeit", type: "slider100", prompt: "Leichtigkeit",
          help: "Ungezwungenheit und Unbekümmertheit." },
        { id: "rolle_ruhe", type: "slider100", prompt: "Ruhe",
          help: "Abwesenheit von Ablenkung, Störung, Geräusch und Bewegung." },
        { id: "rolle_sicherheit", type: "slider100", prompt: "Sicherheit",
          help: "Sich im Alltag und im eigenen Leben beschützt fühlen." },
        { id: "rolle_sinnhaftigkeit", type: "slider100", prompt: "Sinnhaftigkeit",
          help: "Einen Sinn im eigenen Tun und Handeln sehen, als Beitrag zum „Ganzen“." },
        { id: "rolle_freude", type: "slider100", prompt: "Freude",
          help: "Positive Emotionen aufgrund von schönen Erfahrungen, Erlebnissen oder Erinnerungen." },
        { id: "rolle_verbindung", type: "slider100", prompt: "Verbindung",
          help: "Zusammengehörigkeit empfinden." },
        { id: "rolle_respekt", type: "slider100", prompt: "Respekt" },
        { id: "rolle_wachstum", type: "slider100", prompt: "Wachstum",
          help: "Persönliche Weiterentwicklung." },
        { id: "rolle_wertschaetzung", type: "slider100", prompt: "Wertschätzung",
          help: "Schätzen von Eigenschaften einer Sache oder von Individuen." },
        { id: "rolle_wirksamkeit", type: "slider100", prompt: "Wirksamkeit",
          help: "Fähigkeit oder Eigenschaft, eine Wirkung hervorzurufen." },
      ],
    },

    {
      id: "werte_eigene",
      titel: "Eigene Werte in der Schule",
      sliderHints: { left: "überhaupt keine Rolle", right: "maximal große Rolle" },
      items: [
        { id: "werte_eigene_rolle", type: "slider100", prompt:
          "Welche Rolle spielt es für dich, sich in der Schule mit den eigenen Werten zu beschäftigen?" },
        { id: "werte_eigene_bisher", type: "slider100", prompt:
          "Welche Rolle hat die Auseinandersetzung mit den eigenen Werten in der Schule bisher für dich gespielt?" },
      ],
    },

    {
      id: "psy_sicherheit",
      titel: "Zusammenarbeit in eurer Schule",
      intro: "Bitte gib an, inwieweit du den jeweiligen Aussagen zur Zusammenarbeit in eurer Schule zustimmst.",
      likertHints: { left: "stimme ganz und gar nicht zu", right: "stimme vollkommen zu" },
      items: [
        { id: "ps_probleme_offen", type: "likert7", prompt:
          "In meiner Schule kann ich auch Probleme und schwierige Themen offen ansprechen." },
        { id: "ps_niemand_schadet", type: "likert7", prompt:
          "Niemand in meiner Schule würde absichtlich etwas tun, das meiner Arbeit schadet." },
        { id: "ps_fehler_vorgehalten", type: "likert7", prompt:
          "Wenn ich in meiner Schule einen Fehler mache, dann wird mir das oft vorgehalten." },
        { id: "ps_risiko_einzugehen", type: "likert7", prompt:
          "In meiner Schule kann ich mich trauen, ein persönliches Risiko einzugehen." },
        { id: "ps_kollegen_abweisend", type: "likert7", prompt:
          "Meine Schule ist manchmal Kolleginnen und Kollegen gegenüber abweisend, die anders sind." },
        { id: "ps_hilfe_bitten", type: "likert7", prompt:
          "In meiner Schule ist es schwierig, andere Kolleginnen und Kollegen um Hilfe zu bitten." },
        { id: "ps_faehigkeiten_genutzt", type: "likert7", prompt:
          "Bei der Zusammenarbeit in meiner Schule werden meine besonderen Fähigkeiten und Begabungen wertgeschätzt und genutzt." },
      ],
    },

    {
      id: "klima",
      titel: "Klima in der Schule",
      intro: "Wie sehr trifft es nach deinem Empfinden zu, dass in eurer Schule…",
      likertHints: { left: "trifft überhaupt nicht zu", right: "trifft vollkommen zu" },
      items: [
        { id: "klima_offen_vertrauen", type: "likert7", prompt:
          "… ein offenes und vertrauensvolles Klima besteht?" },
        { id: "klima_gegenseitig_unterstuetzung", type: "likert7", prompt:
          "… gegenseitige Unterstützung erfolgt?" },
        { id: "klima_entlastende_gespraeche", type: "likert7", prompt:
          "… entlastende Gespräche möglich sind?" },
        { id: "klima_gemeinsame_normen", type: "likert7", prompt:
          "… gemeinsame Normen und Ziele verfolgt werden?" },
      ],
    },

    {
      id: "resilienz",
      titel: "Umgang mit Belastungen",
      intro: "Gib an, wie sehr du den folgenden Aussagen in Bezug auf Belastungen zustimmst.",
      likertHints: { labels: ["stimme überhaupt nicht zu", "stimme eher nicht zu", "neutral", "stimme eher zu", "stimme vollkommen zu"] },
      items: [
        { id: "res_schnell_erholen", type: "likert5", prompt:
          "Ich neige dazu, mich nach schwierigen Zeiten schnell zu erholen." },
        { id: "res_stress_durchstehen", type: "likert5", prompt:
          "Es fällt mir schwer, stressige Situationen durchzustehen." },
        { id: "res_wenig_zeit_erholen", type: "likert5", prompt:
          "Ich brauche nicht viel Zeit, um mich von einem stressigen Ereignis zu erholen." },
        { id: "res_normalitaet_zurueck", type: "likert5", prompt:
          "Es fällt mir schwer zur Normalität zurückzukommen, wenn etwas Schlimmes passiert ist." },
        { id: "res_schwierige_zeiten", type: "likert5", prompt:
          "Normalerweise überstehe ich schwierige Zeiten ohne größere Probleme." },
        { id: "res_lang_rueckschlaege", type: "likert5", prompt:
          "Ich brauche tendenziell lange, um über Rückschläge in meinem Leben hinwegzukommen." },
      ],
    },

    {
      id: "stress",
      titel: "Stress",
      sliderHints: { left: "überhaupt nicht gestresst", right: "maximal gestresst" },
      items: [
        { id: "stress_eigen", type: "slider100", prompt:
          "Wie stark fühlst du dich aktuell im beruflichen Alltag gestresst?" },
        { id: "stress_kollegium", type: "slider100", prompt:
          "Wie stark schätzt du aktuell das berufliche Stresslevel der anderen Kolleginnen und Kollegen ein?" },
        { id: "stress_schueler", type: "slider100", prompt:
          "Wie stark schätzt du aktuell das schulische Stresslevel eurer Schülerinnen und Schüler ein?" },
      ],
    },

    {
      id: "lebenszufriedenheit",
      titel: "Lebenszufriedenheit",
      intro: "Gib an, inwiefern du den folgenden Aussagen zustimmst.",
      likertHints: { left: "trifft überhaupt nicht zu", right: "trifft vollkommen zu" },
      items: [
        { id: "lz_idealvorstellung", type: "likert7", prompt:
          "In den meisten Bereichen entspricht mein Leben meinen Idealvorstellungen." },
        { id: "lz_bedingungen_ausgezeichnet", type: "likert7", prompt:
          "Meine Lebensbedingungen sind ausgezeichnet." },
        { id: "lz_zufrieden", type: "likert7", prompt:
          "Ich bin mit meinem Leben zufrieden." },
        { id: "lz_wesentliche_erreicht", type: "likert7", prompt:
          "Bisher habe ich die wesentlichen Dinge erreicht, die ich mir für mein Leben wünsche." },
        { id: "lz_kaum_etwas_aendern", type: "likert7", prompt:
          "Wenn ich mein Leben noch einmal leben könnte, würde ich kaum etwas ändern." },
      ],
    },

    {
      id: "work_engagement",
      titel: "Deine Arbeit in der Schule",
      intro: "Wie oft erlebst du die nachfolgend beschriebenen Gefühle in Bezug auf die Arbeit in der Schule?",
      likertHints: { labels: ["nie", "sehr selten", "selten", "manchmal", "oft", "sehr oft", "immer"] },
      items: [
        { id: "we_voller_energie", type: "likert7", prompt: "Ich fühle mich bei meiner Arbeit voller Energie." },
        { id: "we_kraftvoll_lebendig", type: "likert7", prompt: "Ich fühle mich in meinem Job kraftvoll und lebendig." },
        { id: "we_job_begeistert", type: "likert7", prompt: "Mein Job begeistert mich." },
        { id: "we_job_inspiriert", type: "likert7", prompt: "Mein Job inspiriert mich." },
        { id: "we_morgens_lust", type: "likert7", prompt: "Wenn ich morgens aufwache, habe ich Lust, zur Arbeit zu gehen." },
        { id: "we_hart_gluecklich", type: "likert7", prompt: "Wenn ich hart arbeite, fühle ich mich glücklich." },
        { id: "we_stolz", type: "likert7", prompt: "Ich bin stolz auf meine Arbeit." },
        { id: "we_tauche_ein", type: "likert7", prompt: "Ich tauche in meine Arbeit ein." },
        { id: "we_mitreissen", type: "likert7", prompt: "Wenn ich arbeite, lasse ich mich mitreißen." },
      ],
    },

    {
      id: "selbstwirksamkeit",
      titel: "Was du dir zutraust",
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
      intro: "Abschließend noch drei Fragen zu gesellschaftlichen Themen.",
      items: [
        {
          id: "dem_diversitaet",
          type: "slider100",
          prompt: "Für wie wertvoll erachtest du Diversität in einer Gesellschaft?",
          sliderHints: { left: "überhaupt nicht wertvoll", right: "maximal wertvoll" },
        },
        {
          id: "dem_miteinander",
          type: "slider100",
          prompt: "Für wie wertvoll erachtest du ein freiheitlich-demokratisches Miteinander?",
          sliderHints: { left: "überhaupt nicht wertvoll", right: "maximal wertvoll" },
        },
        {
          id: "dem_politisch",
          type: "scale11",
          prompt: "Wie würdest du dich in der folgenden Skala einordnen?",
          labels: {
            left: "konservativ — gesellschaftlich traditionell, wirtschaftspolitisch rechts",
            middle: "weder noch",
            right: "liberal — gesellschaftlich progressiv, wirtschaftspolitisch links",
          },
        },
      ],
    },

    {
      id: "demografie",
      titel: "Noch ein paar Angaben zu dir",
      items: [
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
          id: "berufserfahrung_gesamt",
          type: "number",
          prompt: "Wie viele Jahre Berufserfahrung im Schuldienst hast du (ohne Referendariat)?",
          min: 0, max: 60, placeholder: "Jahre",
        },
        {
          id: "berufserfahrung_aktuell",
          type: "number",
          prompt: "Davon: Wie viele Jahre an deiner aktuellen Schule?",
          min: 0, max: 60, placeholder: "Jahre",
        },
        {
          id: "status_gruppe",
          type: "radio",
          prompt: "Welcher Statusgruppe ordnest du dich zu?",
          options: [
            { value: "referendar", label: "Referendar:in" },
            { value: "lehrkraft", label: "Lehrkraft" },
            { value: "quereinstieg", label: "Lehrkraft (im Quer- oder Seiteneinstieg)" },
            { value: "funktion", label: "Lehrkraft mit Funktions- oder Koordinationsstelle" },
            { value: "multiprof", label: "Person des multiprofessionellen Schulteams (keine Lehrkraft)" },
            { value: "andere", label: "andere" },
          ],
          allowOther: true,
          otherLabel: "andere, und zwar:",
        },
        {
          id: "arbeitszeit",
          type: "radio",
          prompt: "Dein Arbeitszeitmodell?",
          options: [
            { value: "vollzeit", label: "Vollzeit" },
            { value: "teilzeit", label: "Teilzeit" },
          ],
          followUp: {
            ifValue: "teilzeit",
            id: "arbeitszeit_prozent",
            type: "number",
            prompt: "Teilzeit mit ca. wie viel Prozent?",
            min: 1, max: 99, placeholder: "z.B. 75",
          },
        },
        {
          id: "beschaeftigungsverhaeltnis",
          type: "radio",
          prompt: "Dein Beschäftigungsverhältnis?",
          options: [
            { value: "verbeamtet", label: "verbeamtet" },
            { value: "unbefristet", label: "unbefristet angestellt" },
            { value: "befristet", label: "befristet angestellt" },
          ],
        },
      ],
    },
  ],

  outro: {
    titel: "Vielen Dank für deine Teilnahme!",
    text:
      "Das war's für heute. In ein paar Wochen kommt nochmal ein Link für die " +
      "zweite Befragung. Wir freuen uns, wenn du dann wieder dabei bist.",
  },
};
