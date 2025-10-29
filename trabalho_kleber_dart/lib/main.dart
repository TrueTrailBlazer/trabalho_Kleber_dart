import 'package:flutter/material.dart';
// Caminhos relativos para arquivos na mesma pasta
import 'home_page.dart';
import 'quiz.dart';
import 'resultado.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Define a rota inicial do aplicativo
      initialRoute: '/',
      // Define as rotas nomeadas para navegação
      routes: {
        '/': (context) => const HomePage(),
        '/Quiz': (context) => const Quiz(),
        '/Resultado': (context) => const Resultado(),
      },
    );
  }
}
