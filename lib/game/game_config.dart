import 'package:flutter/material.dart';

import '../app/game_api.dart';
import 'kids_quiz_view.dart';
import 'rules.dart';

/// Kids & Family game: kidsMode treats every player as a child (no
/// personalized ads, no analytics, child-directed ad requests, parental
/// gate in the shop).
final gameConfig = GameConfig(
  gameId: 'game-065-kids-math-adventure',
  title: const ['Çocuk Matematik Macerası', 'Kids Math Adventure', 'Kinder Mathe Abenteuer', 'Aventura Matemática', 'Aventure Maths'],
  tagline: const ['Say, topla, çıkar, karşılaştır!', 'Count, add, subtract and compare!', 'Zählen, plus, minus!', '¡Cuenta, suma y resta!', 'Compte, additionne, soustrais !'],
  seedColor: const Color(0xFF3A86FF),
  icon: Icons.calculate,
  rules: MathRules(),
  buildPlay: (ctx) => KidsQuizView(ctx: ctx),
  kidsMode: true,
  tutorial: const [
    TutorialStep(Icons.looks_one, ['Nesneleri tek tek say.', 'Count the objects one by one.', 'Zähle die Dinge.', 'Cuenta los objetos.', 'Compte les objets.']),
    TutorialStep(Icons.add, ['Toplamada iki grubu birleştir.', 'For sums, put both groups together.', 'Beim Plus beide Gruppen zählen.', 'Junta los dos grupos.', 'Réunis les deux groupes.']),
    TutorialStep(Icons.trending_up, ['Dizide sıradaki sayıyı bul.', 'Find the next number in the row.', 'Finde die nächste Zahl.', 'Busca el siguiente número.', 'Trouve le nombre suivant.']),
  ],
);
