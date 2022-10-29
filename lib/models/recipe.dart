import 'package:meal_app/models/ingredient.dart';
import 'package:meal_app/models/recipe_step.dart';
import 'package:meal_app/models/recipe_tag.dart';

class Recipe {
  int id;
  String name;
  String description;
  List<Ingredient> ingredients;
  List<RecipeTag> tags;
  List<RecipeStep> directions;

  Recipe({
    required this.id,
    required this.name,
    required this.description,
    required this.ingredients,
    required this.tags,
    required this.directions,
  });
}
