import 'CalculadoraBaguncada.dart';
import 'CalculadoraFinanceira.dart';

void main(List<String> args) {
  Calculadorabaguncada calcBagunca = Calculadorabaguncada();
  Calculadorafinanceira calculadorafinanceira = Calculadorafinanceira();

  calcBagunca.autenticaUser("Vinicius");
  print(calculadorafinanceira.calculaJuros(1000, 2, 4));
}