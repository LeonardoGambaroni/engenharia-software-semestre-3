/*Converta todos os exercícios anteriores desta parte para TypeScript usando Firebase Functions. O objetivo é praticar a criação de funções onRequest e onCall em um projeto real de Cloud Functions.*/

import { onRequest, onCall, HttpsError } from "firebase-functions/v2/https";
import { initializeApp } from "firebase-admin/app";
import { getFirestore, FieldValue } from "firebase-admin/firestore";

initializeApp();
const db = getFirestore();

//helloApi
export const helloApi = onRequest((request, response) => {
  response.json({
    mensagem: "Olá, Firebase Functions!",
    timestamp: new Date().toISOString(),
  });
});

//somarNumeros
export const somarNumeros = onCall((request) => {
  const numero1 = request.data.numero1;
  const numero2 = request.data.numero2;

  if (numero1 === undefined || numero2 === undefined) {
    throw new HttpsError(
      "invalid-argument",
      "Os dois números devem ser informados."
    );
  }

  return {
    resultado: numero1 + numero2,
  };
});

//calcularFrete
export const calcularFrete = onRequest((request, response) => {
  const distanciaKm = Number(request.query.distanciaKm);
  const pesoKg = Number(request.query.pesoKg);

  if (isNaN(distanciaKm) || isNaN(pesoKg)) {
    response.status(400).json({
      erro: "Informe distanciaKm e pesoKg válidos.",
    });
    return;
  }

  const valorFrete = distanciaKm * 0.5 + pesoKg * 2;

  response.json({
    distanciaKm,
    pesoKg,
    valorFrete,
  });
});

//validarCupom
export const validarCupom = onCall((request) => {
  const cupom = request.data.cupom;

  if (!cupom) {
    throw new HttpsError(
      "invalid-argument",
      "O cupom deve ser informado."
    );
  }

  const cuponsValidos = ["TPDM10", "FLUTTER15", "PUC20"];

  return {
    cupom,
    valido: cuponsValidos.includes(cupom),
  };
});

//statusServidor
export const statusServidor = onRequest((request, response) => {
  response.json({
    status: "Servidor ativo",
    metodoHTTP: request.method,
    horario: new Date().toISOString(),
  });
});

//wcalcularMediaAluno
export const calcularMediaAluno = onCall((request) => {
  const notas = request.data.notas;

  if (!notas || notas.length === 0) {
    throw new HttpsError(
      "invalid-argument",
      "A lista de notas não pode estar vazia."
    );
  }

  let soma = 0;

  for (let i = 0; i < notas.length; i++) {
    soma += notas[i];
  }

  const media = soma / notas.length;

  let situacao = "";

  if (media >= 6) {
    situacao = "Aprovado";
  } else if (media >= 4) {
    situacao = "Recuperação";
  } else {
    situacao = "Reprovado";
  }

  return {
    media,
    situacao,
  };
});

//converterTemperatura
export const converterTemperatura = onRequest((request, response) => {
  const celsius = Number(request.query.celsius);

  if (isNaN(celsius)) {
    response.status(400).json({
      erro: "Informe uma temperatura válida em Celsius.",
    });
    return;
  }

  const fahrenheit = celsius * 9 / 5 + 32;
  const kelvin = celsius + 273.15;

  response.json({
    celsius,
    fahrenheit,
    kelvin,
  });
});

//registrarFeedback
export const registrarFeedback = onCall(async (request) => {
  const nome = request.data.nome;
  const email = request.data.email;
  const mensagem = request.data.mensagem;

  if (!nome || !email || !mensagem) {
    throw new HttpsError(
      "invalid-argument",
      "Nome, email e mensagem são obrigatórios."
    );
  }

  const docRef = await db.collection("feedbacks").add({
    nome,
    email,
    mensagem,
    criadoEm: FieldValue.serverTimestamp(),
  });

  return {
    sucesso: true,
    feedbackId: docRef.id,
  };
});

//listarProdutosPublicos
export const listarProdutosPublicos = onRequest(async (request, response) => {
  const snapshot = await db
    .collection("produtos")
    .where("ativo", "==", true)
    .get();

  const produtos = snapshot.docs.map((doc) => ({
    id: doc.id,
    ...doc.data(),
  }));

  response.json({
    produtos,
  });
});

//criarPedido
export const criarPedido = onCall(async (request) => {
  if (!request.auth) {
    throw new HttpsError(
      "unauthenticated",
      "Usuário precisa estar autenticado."
    );
  }

  const itens = request.data.itens;

  if (!itens || itens.length === 0) {
    throw new HttpsError(
      "invalid-argument",
      "O pedido precisa ter pelo menos um item."
    );
  }

  let valorTotal = 0;

  for (let i = 0; i < itens.length; i++) {
    valorTotal += itens[i].preco * itens[i].quantidade;
  }

  const docRef = await db.collection("pedidos").add({
    usuarioId: request.auth.uid,
    itens,
    valorTotal,
    criadoEm: FieldValue.serverTimestamp(),
  });

  return {
    sucesso: true,
    pedidoId: docRef.id,
    valorTotal,
  };
});