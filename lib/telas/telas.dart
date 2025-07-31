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
      backgroundColor: const Color.fromARGB(255, 6, 48, 200),
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              exercicioModelo.nome,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.white,
              ),
            ),
            Text(
              exercicioModelo.treino,
              style: const TextStyle(fontSize: 15, color: Colors.white),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF0A6D92),
        elevation: 0,
        toolbarHeight: 72,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ), // Cor do AppBar
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("inicar treino A");
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),

        child: ListView(
          children: [
            SizedBox(
              height: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Cor de fundo)
                    ),
                    child: const Text("Enviar foto"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Cor de fundo
                    ),
                    child: const Text("Tirar foto"),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),
            const Text(
              "como fazer?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(exercicioModelo.comoFazer),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(color: Colors.black),
            ),
            const SizedBox(height: 8),
            const Text(
              "como estou me sentindo",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(listaSentimentos.length, (index) {
                SentimentoModelo sentimentoAtual = listaSentimentos[index];
                return ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  title: Text(sentimentoAtual.sentindo),
                  subtitle: Text(sentimentoAtual.data),
                  leading: const Icon(Icons.double_arrow),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    color: Colors.red,
                    onPressed: () {
                      // Lógica para remover o sentimento
                      print("Remover sentimento: ${sentimentoAtual.id}");
                    },
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
