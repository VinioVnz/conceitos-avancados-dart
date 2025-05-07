/* 
  ACOPLAMENTO E COESÃO
  Refere-se ao nivel de foco e responsabilidade única de uma classe.
  Uma classe coesa faz apenas uma coisa e faz bem feito
  alta coesão facilita manutenção, testes e reutilização
  exemplo:
  uma classe RelatorioPDF deve gerar PDF e não cuidar da autenticação do usuário
 */

/* class RelatrioBaguncado{
  void gerarPDF(){
    print("Gerando PDF");
  }

  void autenticar(){
    print("autenticando");
  }

  void enviarEmail(){
    print("enviando email");
  }
}
 */
//essa classe faz muita coisa ou seja, baixa coesão

//exemplo usando alta coesão
//a classe tem apenas uma responsabilidade gerando alta coesão e desacoplametno
class GerarRelatorio{
  void gerarPDF(){
    print("Gerando PDF");
  }
}

class Autenticador{
  void autenticar(){
    print("Autenticando");
  }
}

class EnviadorEmail{
  void enviar(){
    print("Enviando email");
  }
}