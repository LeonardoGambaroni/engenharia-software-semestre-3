/*Crie uma Firebase Function do tipo onCall chamada calcularMediaAluno. A função deve receber uma lista de notas, validar se a lista não está vazia e retornar a média do aluno junto com a situação: aprovado, recuperação ou reprovado.*/

import {onCall, HttpsError} functions from "firebase-functions/v2/https";

export const calcularMediaAluno =
functions.https.onCall(
  (data, context) => {

    const notas = data.notas;

    if (
      !notas ||
      notas.length === 0
    ) {
      throw new functions.https.HttpsError(
        "invalid-argument",
        "A lista de notas não pode estar vazia."
      );
    }

    let soma = 0;

    for (let i = 0; i < notas.length; i++) {
      soma += notas[i];
    }

    const media =
      soma / notas.length;

    let situacao = "";

    if (media >= 6) {
      situacao = "Aprovado";
    }
    else if (media >= 4) {
      situacao = "Recuperação";
    }
    else {
      situacao = "Reprovado";
    }

    return {
      media: media,
      situacao: situacao
    };

  }
);