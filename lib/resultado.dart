import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  
  Resultado(this.text);

  String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      
      child: Text(
        this.text,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}