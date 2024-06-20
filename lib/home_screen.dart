import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: const Text('Jeu De Culture Sénégalaise'),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 35.0,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/categories');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal, // couleur du bouton
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
            textStyle: const TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          child: const Text('Commencer'),
        ),
      ),
    );
  }
}
