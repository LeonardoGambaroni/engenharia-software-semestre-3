/*Crie uma Firebase Function do tipo onCall chamada validarCupom. A função deve receber um código de cupom e retornar se ele é válido ou inválido. Considere pelo menos três cupons válidos fixos no código, por exemplo TPDM10, FLUTTER15 e PUC20.*/

import {onCall, HttpsError} functions from "firebase-functions/v2/https";

export const validarCupom =
functions.https.onCall(
  (data, context) => {

    const cupom = data.cupom;

    if (!cupom) {
      throw new functions.https.HttpsError(
        "invalid-argument",
        "O cupom deve ser informado."
      );
    }

    const cuponsValidos = [
      "TPDM10",
      "FLUTTER15",
      "PUC20"
    ];

    const valido =
      cuponsValidos.includes(cupom);

    return {
      cupom: cupom,
      valido: valido
    };

  }
);
