import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meal_app/models/ingredient.dart';
import 'package:meal_app/models/meal_prep_tag.dart';
import 'package:meal_app/models/recipe.dart';
import 'package:meal_app/models/recipe_step.dart';
import 'package:meal_app/models/recipe_tag.dart';

final storageServiceProvider = Provider<StorageService>((ref) {
  return StorageService();
});

class StorageService {
  late Box _recipes;
  late Box _ingredients;
  late Box _mealPrepTags;
  late Box _recipeSteps;
  late Box _recipeTags;

  Future<bool> init() async {
    log('Initializing', name: 'StorageService');
    try {
      if (!Hive.isAdapterRegistered(0)) {
        Hive.registerAdapter(RecipeAdapter());
        Hive.registerAdapter(IngredientAdapter());
        Hive.registerAdapter(MealPrepTagAdapter());
        Hive.registerAdapter(RecipeStepAdapter());
        Hive.registerAdapter(RecipeTagAdapter());
      }
      await Hive.initFlutter();
      _recipes = await Hive.openBox('recipes');
      _ingredients = await Hive.openBox('ingredients');
      _mealPrepTags = await Hive.openBox('mealPrepTags');
      _recipeSteps = await Hive.openBox('recipeSteps');
      _recipeTags = await Hive.openBox('recipeTags');

      // TODO: remove this for prod
      clearAllRecipes();
      addSomeRecipes();
      final recipes = getRecipes();

      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  addSomeRecipes() {
    addRecipe(Recipe(
      id: 1,
      name: 'My Secret Recipe',
      description:
          'This is my secret recipe. Nobody must know either the ingredients or the steps to recreate this masterpiece.',
      ingredients: [
        Ingredient(
          id: 1,
          recipeId: 1,
          name: 'eggs',
          amount: 1,
          unit: 'egg',
        )
      ],
      recipeTags: [
        RecipeTag(
          id: 1,
          recipeId: 1,
          recipeTagName: 'tag1',
          isDefault: false,
          userId: 1,
        )
      ],
      recipeSteps: [
        RecipeStep(id: 1, recipeId: 1, mealPrepTags: [
          MealPrepTag(
            id: 1,
            recipeId: 1,
            description: 'Recipe Tag 1',
          )
        ])
      ],
    ));

    addRecipe(Recipe(
      id: 1,
      name: 'Moms Secret Recipe',
      description:
          'This is my Mom\'s favorite. Not a lot of other people like it because it is pretty basic but it is good.',
      ingredients: [
        Ingredient(
          id: 1,
          recipeId: 1,
          name: 'eggs',
          amount: 1,
          unit: 'egg',
        )
      ],
      recipeTags: [
        RecipeTag(
          id: 1,
          recipeId: 1,
          recipeTagName: 'tag1',
          isDefault: false,
          userId: 1,
        )
      ],
      recipeSteps: [
        RecipeStep(id: 1, recipeId: 1, mealPrepTags: [
          MealPrepTag(
            id: 1,
            recipeId: 1,
            description: 'Recipe Tag 1',
          )
        ])
      ],
    ));
  }

  List<Recipe> getRecipes() {
    final recipes = List<Recipe>.from(_recipes.get('recipes'));
    return recipes;
  }

  void addRecipe(Recipe recipe) {
    for (final i in recipe.ingredients) {
      addIngredient(i);
    }

    for (final rt in recipe.recipeTags) {
      addRecipeTag(rt);
    }

    for (final rs in recipe.recipeSteps) {
      addRecipeStep(rs);
      for (final mpt in rs.mealPrepTags) {
        addMealPrepTag(mpt);
      }
    }

    final recipes = _recipes.get('recipes') ?? [];
    recipes.add(recipe);
    _recipes.put('recipes', recipes);
    return;
  }

  void addIngredient(Ingredient i) {
    final ingredients = _ingredients.get('ingredients') ?? [];
    ingredients.add(i);
    _ingredients.put('ingredients', ingredients);
    return;
  }

  void addMealPrepTag(MealPrepTag mpt) {
    final tags = _mealPrepTags.get('mealPrepTags') ?? [];
    tags.add(mpt);
    _mealPrepTags.put('mealPrepTags', tags);
    return;
  }

  void addRecipeStep(RecipeStep step) {
    final steps = _recipeSteps.get('recipeSteps') ?? [];
    steps.add(step);
    _recipeSteps.put('recipeSteps', steps);
    return;
  }

  void addRecipeTag(RecipeTag tag) {
    final tags = _recipeTags.get('recipeTags') ?? [];
    tags.add(tag);
    _recipeTags.put('recipeTags', tags);
    return;
  }

  clearAllRecipes() {
    _recipes.delete('recipes');
  }
}
