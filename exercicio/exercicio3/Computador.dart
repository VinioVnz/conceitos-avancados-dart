import 'Componente.dart';

class Computador {
  List<Componente> componentes = [];

  Computador(){
    componentes = [
      Componente("Processador"),
      Componente("Memória Ram"),
      Componente("Disco Rigido")
    ];
  }
  void mostrarComponente(){
    for(var componente in componentes){
      print("Componente: ${componente.nome}");
    }
  }

}