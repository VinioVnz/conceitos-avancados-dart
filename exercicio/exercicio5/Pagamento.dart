import 'MetodoPagamento.dart';

class Pagamento{
  final MetodoPagamento metodoPagamento;
  Pagamento(this.metodoPagamento);
 
    void finalizarCompra(double valor){
      metodoPagamento.pagar(valor);

      //nota-se que posso ter opção de um novo metodo de pagamento, n me limitando apenas
      //ao cartão de crédito.
  }
}