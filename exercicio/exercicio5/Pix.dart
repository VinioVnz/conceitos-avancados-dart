import 'MetodoPagamento.dart';

class Pix implements MetodoPagamento{
  @override
  void pagar(double valor) {
    print("Pagando R\$ $valor com PIX");
  }
}