import 'package:flutter/material.dart';
import 'model/pergunta.dart';
import 'view/perguntaWidget.dart';
import 'view/resultadoWidget.dart';

main() {
  runApp(new PerguntaApp());
}

class PerguntasAppState extends State<PerguntaApp> {
  var _question_index = 0;
  var _pontuacaoTotal = 0;

  List<Pergunta> perguntas = [
    Pergunta("Quanto é 2+2?",
        [Alternativa("4", 10), Alternativa("6", 0), Alternativa("7", 0)]),
    Pergunta("O que é um plasmídeo?", [
      Alternativa("Platelminto", 10),
      Alternativa("Nematelminto", 0),
      Alternativa("Bactéria", 0),
      Alternativa("Protozoário", 0)
    ])
  ];

  void responder(int pontuacao) {
    print(this._pontuacaoTotal);
    if (this._question_index < this.perguntas.length - 1) {
      setState(() {
        this._question_index++;
      });
    } else {
      setState(() {
        this._question_index = -1;
      });
    }
    setState(() {
      this._pontuacaoTotal += pontuacao;
    });
  }

  void restart() {
    setState(() {
      this._pontuacaoTotal = 0;
      this._question_index = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("Perguntas")),
          body: (_question_index > -1)
              ? PerguntaWidget(perguntas[_question_index], responder)
              : Resultado(
                  this._pontuacaoTotal, perguntas.last.totalPontos, restart)),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  PerguntasAppState createState() {
    return PerguntasAppState();
  }
}
