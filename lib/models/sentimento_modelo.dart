class SentimentoModelo {
  String id;
  String sentindo;
  String data;

  SentimentoModelo({
    required this.id,
    required this.sentindo,
    required this.data,
  });
  // Método para converter o objeto em um mapa
  SentimentoModelo.fromMap(Map<String, dynamic> map)
    : id = map['id'],
      sentindo = map['sentindo'],
      data = map['data'];

  // Enviar o objeto para o banco de dados
  Map<String, dynamic> toMap() {
    return {'id': id, 'sentindo': sentindo, 'data': data};
  }
}
