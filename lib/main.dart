import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  const PerguntaApp({super.key});

  

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
          Text(perguntas[1]),
          ElevatedButton(
            child: Text("0 - 10"),
            onPressed: () {
              log("ELE CLICOU!!!");
            },
          ),

          ElevatedButton(
            child: Text("10 - 20"),
            onPressed: () {
              log("ELE CLICOU!!!");
            },
          ),

          ElevatedButton(
            child: Text("20 - 30"),
            onPressed: () {
              log("ELE CLICOU!!!");
            },
          ),

          ElevatedButton(
            child: Text("30 - 40"),
            onPressed: () {
              log("ELE CLICOU!!!");
            },
          ),
        ],
      ),
    ));
  }
}
