/*Crie uma Firebase Function do tipo onRequest chamada converterTemperatura. A função deve receber uma temperatura em Celsius pela query string e retornar a conversão para Fahrenheit e Kelvin.*/

import {onRequest} functions from "firebase-functions/v2/https";

export.converterTemperatura = functions.https.onRequest(
    (request, response) => {
        const celsius = Number(request.query.celsius);

        if(!celsius){
            response.status(400).json({
                erro: 'Temperatura nao encontrada'
            });
        }
        return;
    }
    const fahrenheit = (celsius * 9/5) + 32;
    const Kelvin = celsius + 273;

    response.json({
        fahrenheit,
        kelvin
    });
);