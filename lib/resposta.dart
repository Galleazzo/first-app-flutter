import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String text;
  final void Function() funcao;
  Resposta(this.text, this.funcao);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(this.text),
        onPressed: funcao,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          textStyle: TextStyle(
            fontSize: 30,
          )
        ),
        ),
    );
  }
}