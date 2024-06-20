import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sélectionnez une catégorie'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CategoryButton(category: 'MUSIQUE', route: '/quiz'),
            CategoryButton(category: 'HISTOIRE', route: '/quiz'),
            CategoryButton(category: 'CAPITALE', route: '/quiz'),
            CategoryButton(category: 'CUISINE', route: '/quiz'),
            CategoryButton(category: 'TRADITION', route: '/quiz'),
            CategoryButton(category: 'GEOGRAPHIE', route: '/quiz'),
          ],
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String category;
  final String route;

  const CategoryButton({super.key, required this.category, required this.route});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, route, arguments: category);
      },
      child: Text(category),
    );
  }
}
