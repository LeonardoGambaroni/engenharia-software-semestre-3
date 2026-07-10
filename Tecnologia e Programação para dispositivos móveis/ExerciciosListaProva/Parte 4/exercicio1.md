/*Crie uma Firebase Function do tipo onRequest chamada helloApi. A função deve responder uma requisição HTTP simples retornando um JSON com a mensagem "Olá, Firebase Functions!" e um campo timestamp com a data e hora da execução.*/

import {onRequest} functions from "firebase-functions/v2/https";

export const helloApi = functions.https.onRequest(
  (request, response) => {
    response.json({
      mensagem: "Olá, Firebase Functions!",
      timestamp: new Date().toISOString()
    });
  }
);


