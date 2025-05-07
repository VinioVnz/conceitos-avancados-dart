/* 
  ACOPLAMENTO
  indica o nível de dependencia entre classes
  baixo acoplamento é desejável, pois significa que as classes estão bem isoladas e independentes.
  Exemplo:
  uma classe pedido que depende diretamente de uma classe cliente (e não de uma interface) tem um
  acoplamento forte
 */

//exemplo de acoplamento forte(má prática)
/* 
class CartaoCredito{
  void pagar(double valor){
    print("Pagamento com o cartão: R\$ $valor");
  }
}

class Caixa{
  final CartaoCredito cartao = CartaoCredito();
  void finalizarCompra(double valor){
    cartao.pagar(valor); //forte dependencia da classe concreta
  }
} */

//baixo acoplamento
abstract class MetodoPagamento{
  void pagar(double valor);
}

class CartaoCredito implements MetodoPagamento{
  @override
  void pagar(double valor){
    print("Pagamento R\$ $valor no cartão de crédito");
  }
}

class Caixa{
  final MetodoPagamento metodo;

  Caixa(this.metodo);

  void finalizarCompra(double valor){
    metodo.pagar(valor);
  }

}

