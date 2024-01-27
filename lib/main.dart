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
      if(_perguntaSelecionada < 1){
        _perguntaSelecionada++;
      } else {
        _perguntaSelecionada = 0;
      }
      
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    const List<Map<String, Object>> perguntas = [
      {
        'text': "Qual é o seu nome?",
        'resposta': ['Paulo', 'Guto', 'Julia']
      },
      {
        'text': "Quantos anos voce tem?",
        'resposta': ["17", "18", "20"]
      }
    ];

    List<Widget> respostas = [];
    for(String textoResp in perguntas[_perguntaSelecionada].cast()['resposta']) {
      respostas.add(Resposta(textoResp, _responder));
    }

    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Perguntas"),
            backgroundColor: Colors.blueAccent[100],
          ),
          body: Column(
            children: <Widget>[
              Questao(perguntas[_perguntaSelecionada]["text"].toString()),
              ...respostas
            ],
          ),
    ));
  }
}

