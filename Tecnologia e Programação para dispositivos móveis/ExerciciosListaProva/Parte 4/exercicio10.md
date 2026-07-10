/*Crie uma Firebase Function do tipo onCall chamada criarPedido. A função deve receber os dados de um pedido enviado pelo app Flutter, validar se o usuário está autenticado, calcular o valor total com base nos itens recebidos e salvar o pedido em uma coleção chamada pedidos no Firestore.*/

import { onCall, HttpsError } from "firebase-functions/v2/https";
import { initializeApp } from "firebase-admin/app";
import { getFirestore, FieldValue } from "firebase-admin/firestore";

initializeApp();
const db = getFirestore();

export const criarPedido = onCall (async(request) => {
    if(!request.auth){
        throw new HttpsError(
            'unauthenticated'
            'Usuario precisa estar autenticado'
        );
    }

    const itens = request.data.itens;

    if(!itens || itens.length === 0){
        throw new HttpsError(
            'invalid-argument'
            'O pedido nao contem nenhum item'
        );
    }

    let vlaorTotal = 0;

    for(let i = 0; i < itens.length; i++){
        const preco = itens[i].preco;
        const quantidade = itens[i].quantidade;

        valorTotal += preco * quantidade;
    }

    const pedido = {
        usuarioId: request.auth.uid,
        itens: itens,
        valorTotal: valorTotal,
        criadoEm: FieldValue.serverTimestamp(),
    };

    const docRef = await db.collection('pedidos').add(pedido);

    return{
        sucesso: true,
        pedidoId: docRef.id,
        valorTotal: valorTotal
    };
});