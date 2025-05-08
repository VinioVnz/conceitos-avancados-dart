/* 
  COMPOSIÇÃO
  TIPO DE AGREGAÇÃO MAIS FORTE
  AS PARTES NÃO EXISTEM SEM O TODO.
  INDICA UMA DEPENDÊNCIA DE CICLO DE VIDA.
  EXEMPLO: CASA COMPÕE COMODO, SE A CASA É DESTRUÍDA, OS COMODOS TAMBÉM SÃO.
  OS COMODOS NASCEM E MORREM COM A CASA.
  ISSO É COMPOSIÇÃO
  UM PEDIDO CONTEM UMA LISTA DE PRODUTOS. EM VEZ DE HERANÇA USAMOS COMPOSIÇÃO PORQUE UM PEDIDO TEM PRODUTOS, 
  MAS NÃO É UM PRODUTO
 */

//Aplicando exemplo1
class Comodo{
  String nome;
  Comodo(this.nome);
}

class Casa{
  List<Comodo> comodos = [];

  Casa(){
    comodos = [
      Comodo("sala"),
      Comodo("Cozinha"),
    ];
  }
}

//EXEMPLO 2
class Produto {
  final String nome;
  final double preco;

  Produto(this.nome,this.preco);

}

class Pedido{
  List<Produto> itens = [];

  void adicionarProduto(Produto produto){
    itens.add(produto);
  }

  double calculaTotal(){
    double total = 0;
    for(var produto in itens){
      total += produto.preco; 
    }
    return total;
  }

  void mostrarResumo(){
    print("Resumo do pedido:");
    for(var produto in itens){
      print("Produto: ${produto.nome} Valor: ${produto.preco}");
    }
    print("Total do pedido: R\$ ${calculaTotal()}");
  }
}


void main(){
  Produto p1 = Produto("Camisa", 145);
  Produto p2 = Produto("Monster", 10);

  Pedido pedido = Pedido();

  pedido.adicionarProduto(p1);
  pedido.adicionarProduto(p2);

  pedido.mostrarResumo();
}