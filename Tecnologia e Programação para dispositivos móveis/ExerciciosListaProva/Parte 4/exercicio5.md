/*Crie uma Firebase Function do tipo onRequest chamada statusServidor. A função deve retornar um JSON informando que o servidor está ativo, qual método HTTP foi usado na requisição e qual foi o horário da chamada.*/

import {onRequest} functions from "firebase-functions/v2/https";

export const statusServidor =
functions.https.onRequest(
  (request, response) => {

    response.json({
      status: "Servidor ativo",
      metodoHTTP: request.method,
      horario: new Date().toISOString()
    });

  }
);
