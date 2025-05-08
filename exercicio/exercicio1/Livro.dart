import 'Autor.dart';

class Livro {
  String titulo;
  Autor? autor;
  int paginas;
  Livro(this.titulo,this.paginas);
  void associarAutor(Autor a){
    autor = a;
  }
  void mostrarInfos(){
    if(autor != null){
      print("Titulo: $titulo, Número de páginas: $paginas, Autor: ${autor!.nome}");
    } else{
      print("Titulo: $titulo, Número de páginas: $paginas, Autor: Não informado");
    }
  }
}