/*Crie uma Firebase Function do tipo onCall chamada registrarFeedback. A função deve receber nome, email e mensagem, validar se os campos obrigatórios foram preenchidos e salvar o feedback em uma coleção chamada feedbacks no Firestore.*/

import { onCall, HttpsError } from "firebase-functions/v2/https";
import * as admin from "firebase-admin";

admin.initializeApp();

const db = admin.firestore();

export const registrarFeedback = onCall(async (request) => {
    const nome = request.data.nome;
    const email = request.data.email;
    const mensagem = request.data.mensagem;

    if(!nome || !email || !mensagem){
        throw new HttpsError(
            'invalid-argument',
            'todos os campos sao obrigatorios'
        );
    }

    await db.collection('feedbacks').add({
        nome: nome,
        email: email,
        mensagem: mensagem,
        criadoEm: admin.firestore.FieldValue.serverTimestamp()
    });

    return{
        sucesso: true,
        mensagem: 'Feedback registrado com sucesso'
    };
});