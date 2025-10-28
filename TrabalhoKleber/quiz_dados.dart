// Estrutura de dados para armazenar as perguntas e respostas do quiz.
// É uma lista de mapas, onde cada mapa representa uma pergunta.

final List<Map<String, Object>> quiz = [
  {
    'Pergunta': 'Qual o grupo de palavras estão escritas corretamente?',
    'Respostas': [
      'Asterístico, beneficiente, meteorologia, entertido',
      'Asterisco, beneficente, meteorologia, entretido',
      'Asterisco, beneficente, metereologia, entretido',
      'Asterístico, beneficiente, metereologia, entretido',
    ],
    // A resposta correta é o índice 1 da lista 'Respostas'
    'alternativa_correta': 1,
  },
  {
    'Pergunta': 'Quem descobriu o Brasil?',
    'Respostas': [
      'Dom Pedro I',
      'Cristóvão Colombo',
      'Pedro Álvares Cabral',
      'Tiradentes',
    ],
    'alternativa_correta': 2,
  },
  {
    'Pergunta': 'Qual é a capital da França?',
    'Respostas': [
      'Londres',
      'Madri',
      'Berlim',
      'Paris',
    ],
    'alternativa_correta': 3,
  },
  {
    'Pergunta': 'Qual o maior planeta do sistema solar?',
    'Respostas': [
      'Júpiter',
      'Terra',
      'Marte',
      'Saturno',
    ],
    'alternativa_correta': 0,
  },
  {
    'Pergunta': 'Em que ano o homem pisou na Lua?',
    'Respostas': [
      '1965',
      '1969',
      '1972',
      '1980',
    ],
    'alternativa_correta': 1,
  }
];
