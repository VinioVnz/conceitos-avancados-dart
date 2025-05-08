import 'MetodoPagamento.dart';

class Cartaocredito implements MetodoPagamento{
  @override
  void pagar(double valor) {
    print("Pagando R\$ $valor no cartão");
  }
}