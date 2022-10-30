import 'package:flutter/material.dart';
import 'package:meal_app/recipes/create_recipe.dart';

class RecipeHome extends StatelessWidget {
  const RecipeHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ListView(
          children: const [
            Text('Recipe Page'),
          ],
        ),
        Positioned(
          bottom: 35,
          right: 25,
          child: FloatingActionButton(
            heroTag: const {},
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CreateRecipe(),
                ),
              );
            },
            tooltip: 'Add a new Recipe',
            backgroundColor: Colors.green,
            child: const Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}
