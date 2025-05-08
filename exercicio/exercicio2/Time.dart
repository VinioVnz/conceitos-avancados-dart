import 'Jogador.dart';

class Time {
  List<Jogador> jogadores = [];
  String nome;
  Time(this.nome);

  void addJogador(Jogador jogador){
    jogadores.add(jogador);
  }
  void mostrarElenco(){
    print("Elenco do $nome");
    for(var jogador in jogadores){
      print("Jogador: ${jogador.nome} Posição: ${jogador.posicao}");
    }
  }
}