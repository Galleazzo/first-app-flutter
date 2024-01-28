import 'dart:developer';
import 'package:projeto_perguntas/questionarioi.dart';
import 'package:projeto_perguntas/resposta.dart';
import 'package:projeto_perguntas/resultado.dart';
import './questao.dart';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

class _PerguntaAppState extends State<PerguntaApp> {
  final _perguntas = [
    {
      'text': "Qual é o seu nome?",
      'resposta': [
        {'texto' : 'Paulo', 'valor' : 'Paulo'},
        {'texto' : 'Guto', 'valor': 'Guto'},
        {'texto' : 'Julia', 'valor': 'Julia'},
      ]
    },
    {
      'text': "Quantos anos voce tem?",
      'resposta': [
        {'texto' : "17", 'valor' : 17},
        {'texto' : "18", 'valor': 18},
        {'texto' : "20", 'valor': 20},
      ]
    }
  ];

  var _perguntaSelecionada = 0;

  void _responder( ) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Perguntas"),
        backgroundColor: Colors.blueAccent[100],
      ),
      body: temPerguntaSelecionada
          ? Questionario(
              perguntas: _perguntas,
              perguntaSelecionada: _perguntaSelecionada,
              responder: _responder)
          : Resultado('Parabens!!'),
    ));
  }
}
