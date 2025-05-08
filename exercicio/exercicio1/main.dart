import 'Autor.dart';
import 'Livro.dart';

void main(List<String> args) {
  Livro livro1 = Livro("Diario de um zumbi", 90);
  Livro livro2 = Livro("Skibidi",100);
  Autor autor1 = Autor("Vinícius");

  livro1.associarAutor(autor1);
  livro2.associarAutor(autor1);

  livro1.mostrarInfos();
  livro2.mostrarInfos();
}