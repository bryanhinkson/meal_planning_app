import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meal_app/models/recipe.dart';

class RecipeTile extends ConsumerWidget {
  final Recipe recipe;

  const RecipeTile({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(context, ref) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      margin: const EdgeInsets.symmetric(vertical: 2),
      color: Colors.grey.shade200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Text(
              recipe.name,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Expanded(child: Text(recipe.description)),
        ],
      ),
    );
  }
}
