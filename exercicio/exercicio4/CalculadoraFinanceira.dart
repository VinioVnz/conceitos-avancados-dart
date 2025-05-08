class Calculadorafinanceira {
  double calculaJuros(double valor,double porcentagem,int meses){
    return valor * (porcentagem/100) * meses;
    
  }
  double parcelar(double valor, double parcela){
    return valor/parcela;
  }
}