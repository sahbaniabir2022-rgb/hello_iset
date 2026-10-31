// Classe Cours
class Cours {
  final String nom;
  final double coefficient;
  final double note;

  Cours({
    required this.nom,
    required this.coefficient,
    required this.note,
  });
}

void main() {
  final cours = [
    Cours(nom: 'Dart', coefficient: 2, note: 15),
    Cours(nom: 'Flutter', coefficient: 3, note: 14),
    Cours(nom: 'Java', coefficient: 2, note: 12),
    Cours(nom: 'Base de données', coefficient: 1, note: 16),
  ];


  double somme = 0;
  double totalCoefficient = 0;

  for (var c in cours) {
    somme += c.note * c.coefficient;
    totalCoefficient += c.coefficient;
  }

  double moyenne = somme / totalCoefficient;

  print('Moyenne pondérée : ${moyenne.toStringAsFixed(2)}');


  var meilleur = cours[0];

  for (var c in cours) {
    if (c.note > meilleur.note) {
      meilleur = c;
    }
  }

  print('Meilleur cours : ${meilleur.nom}');
  print('Meilleure note : ${meilleur.note}');
}
