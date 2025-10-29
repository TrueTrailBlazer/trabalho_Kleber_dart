import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Quiz Flutter & Dart",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
          backgroundColor: Colors.blue[400],
        ),
        body: Center(
          child: Column(
            // Alinha os widgets com espaço uniforme entre eles
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Logotipo do Flutter
              const FlutterLogo(
                size: 200,
              ),
              // Botão para iniciar o quiz
              ElevatedButton(
                onPressed: () {
                  // Navega para a tela de Quiz usando a rota nomeada
                  Navigator.pushNamed(context, '/Quiz');
                },
                style: ElevatedButton.styleFrom(
                  // Define o preenchimento interno do botão
                  padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                  backgroundColor: Colors.blue[400],
                ),
                child: const Text(
                  "Jogar",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
