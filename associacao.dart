/* 
  Associação
  Relacionamento genérico entre classes
  uma classe conhece a outra
  exemplo: Professor <--> Departamento
  O professor trabalha em um departamento
  Departamento conhece professor, mas eles vivem independentemente
 */

class Professor{
  String nome;
  Professor(this.nome);
}

class Departamento{
  String nome;
  List<Professor> professores = [];

  Departamento(this.nome);

  void adicionarProfessor(Professor p){
    professores.add(p);
  }
}

//imagine duas classes Paciente e Médico
/* 
  um paciente pode ter um médico associado, e o médico pode ter vários pacientes
 */

class Medico{
  String nome;
  Medico(this.nome);
}

class Paciente{
  String nome;
  Medico? medico; //associação opcional
  Paciente(this.nome);

  void associarMedico(Medico m){
    medico = m;
  }

  void mostrarInfos(){
    print("Paciente: $nome");
    if(medico != null){
      // o ! após o médico é o operador null assertion operator (negação de nullidade)
      print("Médico: ${medico!.nome}");
    } else{
      print("Nenhum médico associado");
    }
  }
}