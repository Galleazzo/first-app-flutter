import 'dart:developer';
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
          ElevatedButton(
            child: Text("0 - 10"),
            onPressed: () {
              this._responder();
            },
          ),

          ElevatedButton(
            child: Text("10 - 20"),
            onPressed: () {
              this._responder();
            },
          ),

          ElevatedButton(
            child: Text("20 - 30"),
            onPressed: () {
              this._responder();
            },
          ),

          ElevatedButton(
            child: Text("30 - 40"),
            onPressed: () {
              this._responder();
            },
          ),
        ],
      ),
    ));
  }
}

