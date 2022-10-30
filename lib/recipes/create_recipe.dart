import 'package:flutter/material.dart';

class CreateRecipe extends StatelessWidget {
  const CreateRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create A New Recipe'),
      ),
      body: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text(
          'Save Recipe',
        ),
      ),
    );
  }
}
