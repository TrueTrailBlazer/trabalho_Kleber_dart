import 'package:flutter/material.dart';
// Caminhos relativos para arquivos na mesma pasta
import 'resultado.dart';
import 'quiz_dados.dart';

// Tela de Quiz (Stateful) pois seu estado muda (pergunta atual, placar)
class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // Variáveis de estado
  int perguntaNumero = 1; // Controla a pergunta atual (começa em 1)
  int acertos = 0; // Contagem de acertos
  int erros = 0; // Contagem de erros

  // Função chamada quando o usuário seleciona uma resposta
  void respondeu(int respostaNumero) {
    setState(() {
      // --- CORREÇÃO AQUI ---
      // Comparamos dois 'int'. Precisamos do cast (as int)
      if ((quiz[perguntaNumero - 1]['alternativa_correta'] as int) ==
          respostaNumero) {
        debugPrint('acertou');
        acertos++; // Incrementa acertos
      } else {
        debugPrint('errou');
        erros++; // Incrementa erros
      }

      debugPrint('acertos totais: $acertos erros: $erros');

      // Verifica se é a última pergunta
      if (perguntaNumero == quiz.length) {
        debugPrint("Terminou o quiz");
        // Navega para a tela de Resultado, passando o número de acertos
        Navigator.pushNamed(
          context,
          '/Resultado',
          arguments: Argumentos(acertos), // Passa os argumentos
        );
      } else {
        // Se não for a última, avança para a próxima pergunta
        perguntaNumero++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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
        body: Padding(
          // Adiciona preenchimento nas laterais
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Indicador de pergunta atual
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "Pergunta $perguntaNumero de ${quiz.length}",
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                // Texto da pergunta atual
                Text(
                  // --- CORREÇÃO AQUI ---
                  // Avisamos ao Dart que 'Pergunta' é uma String
                  "Pergunta: ${(quiz[perguntaNumero - 1]['Pergunta'] as String)}",
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                // Botão Resposta 1
                ElevatedButton(
                  onPressed: () {
                    respondeu(0); // Chama a função com o índice 0
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                    backgroundColor: Colors.blue[400],
                  ),
                  child: Text(
                    // --- CORREÇÃO AQUI ---
                    // Avisamos que 'Respostas' é uma List<String>
                    "${(quiz[perguntaNumero - 1]['Respostas'] as List<String>)[0]}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                // Botão Resposta 2
                ElevatedButton(
                  onPressed: () {
                    respondeu(1); // Chama a função com o índice 1
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                    backgroundColor: Colors.blue[400],
                  ),
                  child: Text(
                    // --- CORREÇÃO AQUI ---
                    "${(quiz[perguntaNumero - 1]['Respostas'] as List<String>)[1]}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                // Botão Resposta 3
                ElevatedButton(
                  onPressed: () {
                    respondeu(2); // Chama a função com o índice 2
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                    backgroundColor: Colors.blue[400],
                  ),
                  child: Text(
                    // --- CORREÇÃO AQUI ---
                    "${(quiz[perguntaNumero - 1]['Respostas'] as List<String>)[2]}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                // Botão Resposta 4
                ElevatedButton(
                  onPressed: () {
                    respondeu(3); // Chama a função com o índice 3
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                    backgroundColor: Colors.blue[400],
                  ),
                  child: Text(
                    // --- CORREÇÃO AQUI ---
                    "${(quiz[perguntaNumero - 1]['Respostas'] as List<String>)[3]}",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

