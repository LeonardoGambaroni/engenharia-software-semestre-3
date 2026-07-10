/*Crie uma Firebase Function do tipo onCall chamada somarNumeros. A função deve receber dois números enviados pelo app Flutter, validar se os dois valores foram informados e retornar a soma entre eles.*

import {onCall, HttpsError} functions from "firebase-functions/v2/https";

export const somarNumeros =
functions.https.onCall(
  (data, context) => {

    const numero1 = data.numero1;
    const numero2 = data.numero2;

    if (
      numero1 === undefined ||
      numero2 === undefined
    ) {
      throw new functions.https.HttpsError(
        "invalid-argument",
        "Os dois números devem ser informados."
      );
    }

    const soma = numero1 + numero2;

    return {
      resultado: soma
    };

  }
);
