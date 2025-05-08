import 'Jogador.dart';
import 'Time.dart';

void main(List<String> args) {
  Jogador jogador1 = Jogador('Vinícius',"Meia-Atacante");
  Time time1 = Time("Palmeiras");

  jogador1.mostrarJogador();
  time1.addJogador(jogador1);
  time1.mostrarElenco();
}