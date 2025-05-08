import 'CartaoCredito.dart';
import 'Pagamento.dart';
import 'Pix.dart';

void main(List<String> args) {
  Pagamento pagPix = Pagamento(Pix());
  Pagamento pagCartao = Pagamento(Cartaocredito());

  pagPix.finalizarCompra(1000);
  pagCartao.finalizarCompra(1500);

}