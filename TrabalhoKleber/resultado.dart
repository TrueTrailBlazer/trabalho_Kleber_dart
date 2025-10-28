import 'package:flutter/material.dart';
// Caminho relativo para arquivos na mesma pasta
import 'quiz_dados.dart';

// Classe para definir a estrutura dos argumentos passados para esta rota
class Argumentos {
  int acertos = 0;
  Argumentos(this.acertos);
}

// Tela de Resultado (Stateless)
class Resultado extends StatelessWidget {
  const Resultado({super.key});

  @override
  Widget build(BuildContext context) {
    // Extrai os argumentos passados da rota
    final argumentos = ModalRoute.of(context)!.settings.arguments as Argumentos;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Quiz Flutter & Dart",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          backgroundColor: Colors.blue[400],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Título
              const Text(
                "Resultado",
                style: TextStyle(fontSize: 20),
              ),
              // Exibe o placar final
              Text(
                "Você acertou ${argumentos.acertos} de ${quiz.length} perguntas.",
                style: const TextStyle(fontSize: 20),
              ),
              // Botão para jogar novamente
              ElevatedButton(
                onPressed: () {
                  // Navega de volta para a tela de Quiz para um novo jogo
                  // Como o Quiz é chamado via rota nomeada, um novo estado é criado
                  Navigator.pushNamed(context, '/Quiz');
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                  backgroundColor: Colors.blue[400],
                ),
                child: const Text(
                  "Jogar Novamente",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
