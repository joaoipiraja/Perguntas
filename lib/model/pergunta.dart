class Alternativa {
  String _nome;
  int _pontuacao;

  Alternativa(String nome, int pontuacao) {
    this._nome = nome;
    this._pontuacao = pontuacao;
  }

  String get nome {
    return this._nome;
  }

  int get pontuacao {
    return this._pontuacao;
  }

  set nome(String n) {
    this._nome = n;
  }

  set pontuacao(int p) {
    this._pontuacao = p;
  }
}

class Pergunta {
  String _questao;
  List<Alternativa> _alternativas;
  int _totalPontos;

  Pergunta(String questao, List<Alternativa> alternativas) {
    this._questao = questao;
    this._alternativas = alternativas;
    this._totalPontos =
        this._alternativas.fold(0, (sum, next) => sum + next.pontuacao);
  }

  int get totalPontos {
    return this._totalPontos;
  }

  String get questao {
    return this._questao;
  }

  List<Alternativa> get alternativas {
    return this._alternativas;
  }

  set questao(String q) {
    this._questao = q;
  }

  set alternativas(List<Alternativa> alt) {
    this._alternativas = alt;
  }
}
