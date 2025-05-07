/* 
  AGREGAÇÃO
  é um tipo de relacionamento entre classes na POO em que uma classe "tem" outra classe,mas sem
  dependencia total de existencia.
  é um relacionamento todo-parte onde o objeto "parte" pode existir independentemente do objeto
  "todo"
  Caracteristicas
  representa uma relação fraca de composição
  o objeto agregado não é destruído se o objeto que o contem for destruido
  exemplo: um "curso" tem "alunos" mas os alunos continuam existindo mesmo fora do curso
 */

class Aluno {
  String nome;

  Aluno(this.nome);
}

class Curso {
  String nome;
  List<Aluno> alunos = [];

  Curso(this.nome);

  void matricular(Aluno aluno){
    alunos.add(aluno);
  }
}
//curso tem alunos, mas os alunos podem existir sem o curso. Isso é agregação