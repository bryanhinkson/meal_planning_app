import 'package:meal_app/models/meal_prep_tag.dart';

class RecipeStep {
  int id;
  int recipeId;
  List<MealPrepTag> tags;

  RecipeStep({
    required this.id,
    required this.recipeId,
    required this.tags,
  });
}
