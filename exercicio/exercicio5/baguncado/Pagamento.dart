
import 'CartaoCredito.dart';

class Pagamento {
  final Cartaocredito cartao = Cartaocredito();
  void finalizarCompra(valor){
    cartao.pagar(valor);
  }
  
}