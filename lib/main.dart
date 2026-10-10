
// Le dossier lib contient le code Dart principal de l'application.
// Le dossier android contient les fichiers nécessaires à la version Android.
// Le dossier web contient les fichiers nécessaires à la version Web.
// Le fichier pubspec.yaml contient les informations du projet et ses dépendances.

import 'package:flutter/material.dart';

void main() {
  // Point d'entrée de l'application.
  // runApp lance l'application en affichant le widget principal MyApp.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Construit l'interface générale de l'application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Titre de l'application.
      title: 'Mon premier projet Abir Sahbani',

      // Configuration du thème et de la couleur principale.
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 9, 78, 120),
        ),
      ),

      // Page principale de l'application.
      home: const MyHomePage(title: 'HELLO_ISET'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // Titre transmis à la page principale.
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Valeur initiale du compteur.
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // Augmente le compteur de 1 et actualise l'interface.
      _counter++;
    });
  }

  void _decrementer() {
    // Vérifie que le compteur est supérieur à zéro.
    if (_counter > 0) {
      setState(() {
        // Diminue le compteur de 1.
        _counter--;
      });
    }
  }

  void _resetCounter() {
    setState(() {
      // Remet le compteur à zéro.
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold définit la structure de la page.
    return Scaffold(
      appBar: AppBar(
        // Couleur de la barre supérieure.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        // Affiche le titre de la page.
        title: Text(widget.title),
      ),

      // Centre le contenu de la page.
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Avatar circulaire avec une icône.
            const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 230, 228, 103),
              radius: 50,
              child: Icon(Icons.girl, size: 50),
            ),

            const SizedBox(height: 16),

            // Affiche le nom et le prénom.
            const Text(
              'Sahbani Abir',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            // Affiche la spécialité.
            const Text('DSI'),

            const SizedBox(height: 8),

            // Affiche l'adresse électronique.
            const Text('sahbaniabir2022@isetb.tn'),

            const SizedBox(height: 24),

            // Affiche la valeur actuelle du compteur.
            Text('Compteur : $_counter'),
          ],
        ),
      ),

      // Place les trois boutons sur une ligne.
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Bouton pour augmenter le compteur.
          FloatingActionButton(
            heroTag: 'incre',
            onPressed: _incrementCounter,
            tooltip: 'Incrémenter',
            child: const Icon(Icons.add),
          ),

          const SizedBox(width: 10),

          // Bouton pour diminuer le compteur.
          FloatingActionButton(
            heroTag: 'decre',
            onPressed: _decrementer,
            tooltip: 'Décrémenter',
            child: const Icon(Icons.remove),
          ),

          const SizedBox(width: 10),

          // Bouton pour réinitialiser le compteur.
          FloatingActionButton(
            heroTag: 'reset',
            onPressed: _resetCounter,
            tooltip: 'Réinitialiser',
            child: const Icon(Icons.refresh),
          ), 
        ],
      ),
    );
  }
}