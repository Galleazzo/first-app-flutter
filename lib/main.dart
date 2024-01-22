import 'dart:developer';
import 'package:projeto_perguntas/resposta.dart';

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

  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    const List<String> perguntas = [
      "Qual é o seu nome?",
      "Quantos anos voce tem?",
      "Voce é homem ou mulher?",
      "Voce tem cachorro?"
    ];


    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Perguntas"),
            backgroundColor: Colors.blueAccent[100],
          ),
          body: Column(
            children: <Widget>[
              Questao(perguntas[_perguntaSelecionada]),
              Resposta("0 - 10", _responder),
              Resposta("10 - 20", _responder),
              Resposta("20 - 30", _responder),
              Resposta("30 - 40", _responder)
            ],
          ),
    ));
  }
}

