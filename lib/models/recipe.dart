import 'package:hive/hive.dart';
import 'package:meal_app/models/ingredient.dart';
import 'package:meal_app/models/recipe_step.dart';
import 'package:meal_app/models/recipe_tag.dart';

part 'recipe.g.dart';

@HiveType(typeId: 0)
class Recipe extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String description;
  @HiveField(3)
  List<Ingredient> ingredients;
  @HiveField(4)
  List<RecipeTag> recipeTags;
  @HiveField(5)
  List<RecipeStep> recipeSteps;

  Recipe({
    required this.id,
    required this.name,
    required this.description,
    required this.ingredients,
    required this.recipeTags,
    required this.recipeSteps,
  });

  Recipe.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        description = json['description'],
        ingredients = List.from(json['ingredients'])
            .map((i) => Ingredient.fromJson(i))
            .toList(),
        recipeTags = List.from(json['recipeTags'])
            .map((rt) => RecipeTag.fromJson(rt))
            .toList(),
        recipeSteps = List.from(json['directions'])
            .map((step) => RecipeStep.fromJson(step))
            .toList();

  // Map<String, dynamic> toJson() {
  //   return {
  //     'id': id,
  //     'name': name,
  //     'description': description,
  //     'ingredients': ingredients.map((i) => i.toJson()).toList(),
  //     'recipeTags': recipeTags.map((rt) => rt.toJson()).toList(),
  //     'recipeSteps': recipeSteps.map((rs) => rs.toJson()).toList(),
  //   };
  // }
}
