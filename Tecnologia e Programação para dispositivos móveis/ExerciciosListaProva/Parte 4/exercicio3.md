/*Crie uma Firebase Function do tipo onRequest chamada calcularFrete. A função deve receber, via query string, os parâmetros distanciaKm e pesoKg. Com base nesses valores, calcule um valor simples de frete e retorne o resultado em JSON.*/

import {onRequest} functions from "firebase-functions/v2/https";

export const calcularFrete =
functions.https.onRequest(
  (request, response) => {

    const distanciaKm =
      Number(request.query.distanciaKm);

    const pesoKg =
      Number(request.query.pesoKg);

    if (
      !distanciaKm ||
      !pesoKg
    ) {
      response.status(400).json({
        erro:
          "Informe distanciaKm e pesoKg."
      });

      return;
    }

    const frete =
      (distanciaKm * 0.5) +
      (pesoKg * 2);

    response.json({
      distanciaKm: distanciaKm,
      pesoKg: pesoKg,
      valorFrete: frete
    });

  }
);

