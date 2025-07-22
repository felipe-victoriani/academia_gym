import 'package:academia_gym/models/exercicio_modelo.dart';
import 'package:academia_gym/models/sentimento_modelo.dart';
import 'package:flutter/material.dart';

class Telas extends StatelessWidget {
  Telas({super.key});

  final ExercicioModelo exercicioModelo = ExercicioModelo(
    id: '1',
    nome: 'Puxada Alta Pronada',
    treino: 'Treino A',
    comoFazer:
        'Segura com duas mãos na barra pronada, puxa a barra até o peito e volta devagar',
    urlImagem: 'https://example.com/imagem.jpg',
  );

  final List<SentimentoModelo> listaSentimentos = [
    SentimentoModelo(id: "001", sentindo: "ativação", data: "2023-10-01"),
    SentimentoModelo(id: "002", sentindo: "concentração", data: "2023-10-02"),
    SentimentoModelo(id: "003", sentindo: "cansaço", data: "2023-10-03"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${exercicioModelo.nome} - ${exercicioModelo.treino}"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("inicar treino A");
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),

        child: ListView(
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("Enviar foto")),
            const Text(
              "como fazer?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(exercicioModelo.comoFazer),
            Divider(),
            Text(
              "como estou me sentindo",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(listaSentimentos.length, (index) {
                SentimentoModelo sentimentoAtual = listaSentimentos[index];
                return Text(sentimentoAtual.sentindo);
              }),
            ),
          ],
        ),
      ),
    );
  }
}
