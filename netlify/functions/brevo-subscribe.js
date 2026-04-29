// Netlify Function: Brevo-Subscribe
// POST /.netlify/functions/brevo-subscribe
// Body: { email, vorname, nachname, rolle, wertetyp }
// API-Key: process.env.BREVO_API_KEY (in Netlify Dashboard setzen!)

const BREVO_LIST_ID = 3; // Liste für Minitest-Leads (laut Sebastian)

exports.handler = async (event) => {
  // CORS preflight
  if (event.httpMethod === "OPTIONS") {
    return {
      statusCode: 204,
      headers: {
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Headers": "Content-Type",
        "Access-Control-Allow-Methods": "POST, OPTIONS"
      }
    };
  }

  if (event.httpMethod !== "POST") {
    return { statusCode: 405, body: JSON.stringify({ error: "Method Not Allowed" }) };
  }

  const apiKey = process.env.BREVO_API_KEY;
  if (!apiKey) {
    console.error("BREVO_API_KEY env var nicht gesetzt!");
    return {
      statusCode: 500,
      headers: { "Access-Control-Allow-Origin": "*" },
      body: JSON.stringify({ error: "API key not configured" })
    };
  }

  let payload;
  try {
    payload = JSON.parse(event.body);
  } catch (e) {
    return {
      statusCode: 400,
      headers: { "Access-Control-Allow-Origin": "*" },
      body: JSON.stringify({ error: "Invalid JSON" })
    };
  }

  const { email, vorname, nachname, rolle, wertetyp, ergebnis_teil_1, ergebnis_teil_2 } = payload;

  if (!email || !rolle || !wertetyp) {
    return {
      statusCode: 400,
      headers: { "Access-Control-Allow-Origin": "*" },
      body: JSON.stringify({ error: "Missing required fields: email, rolle, wertetyp" })
    };
  }

  try {
    const res = await fetch("https://api.brevo.com/v3/contacts", {
      method: "POST",
      headers: {
        "api-key": apiKey,
        "Content-Type": "application/json",
        "accept": "application/json"
      },
      body: JSON.stringify({
        email: email,
        attributes: {
          FIRSTNAME:                 vorname || "",
          LASTNAME:                  nachname || "",
          ROLLE:                     rolle,
          TYP_SCHNELLTEST_WERTE:     wertetyp,
          TESTERGEBNIS_TEXT_TEIL_1:  ergebnis_teil_1 || "",
          TESTERGEBNIS_TEXT_TEIL_2:  ergebnis_teil_2 || ""
        },
        listIds: [BREVO_LIST_ID],
        updateEnabled: true
      })
    });

    const data = await res.json().catch(() => null);

    // Was wir gesendet haben (für Debug im Browser-Network-Tab)
    const sentPayload = {
      email: email,
      attributes: {
        FIRSTNAME:                 vorname || "",
        LASTNAME:                  nachname || "",
        ROLLE:                     rolle,
        TYP_SCHNELLTEST_WERTE:     wertetyp,
        TESTERGEBNIS_TEXT_TEIL_1:  ergebnis_teil_1 || "",
        TESTERGEBNIS_TEXT_TEIL_2:  ergebnis_teil_2 || ""
      },
      listIds: [BREVO_LIST_ID],
      updateEnabled: true
    };

    if (!res.ok) {
      console.error("Brevo API error:", res.status, data, "Sent:", sentPayload);
      return {
        statusCode: res.status,
        headers: { "Access-Control-Allow-Origin": "*" },
        body: JSON.stringify({
          error: "Brevo API error",
          brevo_status: res.status,
          brevo_response: data,
          sent_payload: sentPayload
        })
      };
    }

    return {
      statusCode: 200,
      headers: { "Access-Control-Allow-Origin": "*" },
      body: JSON.stringify({
        success: true,
        brevo_response: data,
        sent_payload: sentPayload
      })
    };
  } catch (err) {
    console.error("Brevo fetch error:", err);
    return {
      statusCode: 500,
      headers: { "Access-Control-Allow-Origin": "*" },
      body: JSON.stringify({ error: err.message })
    };
  }
};
