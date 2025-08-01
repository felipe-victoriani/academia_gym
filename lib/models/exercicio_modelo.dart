class ExercicioModelo {
  String id;
  String nome;
  String treino;
  String comoFazer;

  String? urlImagem;

  ExercicioModelo({
    required this.id,
    required this.nome,
    required this.treino,
    required this.comoFazer,

    this.urlImagem,
  });
  //metodo para converter o objeto em um mapa
  ExercicioModelo.fromMap(Map<String, dynamic> map)
    : id = map['id'],
      nome = map['nome'],
      treino = map['treino'],
      comoFazer = map['comoFazer'],
      urlImagem = map['urlImagem'];

  // enviar o objeto para o banco de dados
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'treino': treino,
      'comoFazer': comoFazer,
      'urlImagem': urlImagem,
    };
  }
}
