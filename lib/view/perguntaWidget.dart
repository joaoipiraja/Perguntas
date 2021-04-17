import 'package:flutter/material.dart';
import '../model/pergunta.dart';

class PerguntaWidget extends StatelessWidget {
  final Pergunta pergunta;
  final void Function(int) onSelecionado;

  PerguntaWidget(this.pergunta, this.onSelecionado);

  @override
  Widget build(BuildContext context) {
    var alternativasButton = pergunta.alternativas
        .map((a) => Container(
              width: double.infinity,
              child: ElevatedButton(
                child: Text(a.nome),
                onPressed: () => onSelecionado(a.pontuacao),
              ),
            ))
        .toList();

    return Container(
        child: Column(children: [
      Container(
          width: double.infinity,
          margin: EdgeInsets.all(10),
          child: Text(pergunta.questao,
              style: TextStyle(fontSize: 28), textAlign: TextAlign.center)),
      Column(children: alternativasButton)
    ]));
  }
}
