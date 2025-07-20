import 'package:flutter/material.dart';

class Telas extends StatelessWidget {
  const Telas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Puxada Alta Pronada-treino A")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("inicar treino A");
          // Action to perform when the button is pressed
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("Enviar foto")),
            const Text(
              "como fazer?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const Text(
              "segura com duas mãos na barra pronada, puxa a barra até o peito e volta devagar",
            ),
            Divider(),
            const Text(
              "como estou me sentindo",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const Text("me sentindo bem, mas com um pouco de dor no ombro"),
          ],
        ),
      ),
    );
  }
}
