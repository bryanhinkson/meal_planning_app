import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meal_app/recipes/create_recipe.dart';
import 'package:meal_app/recipes/recipe_tile.dart';
import 'package:meal_app/storage_service.dart';

class RecipeHome extends ConsumerWidget {
  const RecipeHome({super.key});

  @override
  Widget build(context, ref) {
    final storageService = ref.watch(storageServiceProvider);
    final recipes = storageService.getRecipes();

    return Stack(
      alignment: Alignment.center,
      children: [
        ListView(
          children: [
            for (final r in recipes) RecipeTile(recipe: r),
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
