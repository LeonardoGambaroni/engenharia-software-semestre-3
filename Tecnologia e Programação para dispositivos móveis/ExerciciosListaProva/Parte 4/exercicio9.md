/*Crie uma Firebase Function do tipo onRequest chamada listarProdutosPublicos. A função deve consultar a coleção produtos no Firestore e retornar apenas os produtos marcados com ativo: true.*/

import { onRequest } from "firebase-functions/v2/https";
import { initializeApp } from "firebase-admin/app";
import { getFirestore } from "firebase-admin/firestore";

initializeApp();
const db = getFirestore();

export const listarProdutosPublicos = onRequest(async (request, response) => {

  const snapshot = await db.collection("produtos").where("ativo", "==", true).get();

  const produtos = snapshot.docs.map(doc => ({ id: doc.id, ...doc.data() }));

  response.json({ produtos });
  
});