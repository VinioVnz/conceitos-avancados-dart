class Jogador {
  String nome;
  String posicao;
  Jogador(this.nome,this.posicao);

  void mostrarJogador(){
    print("Jogador: $nome | Posição: $posicao");
  }
}