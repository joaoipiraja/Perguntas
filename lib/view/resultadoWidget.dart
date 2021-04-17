import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int totalPontos;
  final int pontos;
  final void Function() onReiniciarQuestionario;

  Resultado(this.pontos, this.totalPontos, this.onReiniciarQuestionario);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Parabéns! $pontos/$totalPontos", style: TextStyle(fontSize: 28)),
        FlatButton(
            child: Text("Reiniciar >", style: TextStyle(fontSize: 18)),
            onPressed: onReiniciarQuestionario)
      ]),
    );
  }
}
