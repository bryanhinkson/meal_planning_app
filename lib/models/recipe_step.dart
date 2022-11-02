import 'package:hive/hive.dart';
import 'package:meal_app/models/meal_prep_tag.dart';

part 'recipe_step.g.dart';

@HiveType(typeId: 3)
class RecipeStep extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  int recipeId;
  @HiveField(2)
  List<MealPrepTag> mealPrepTags;

  RecipeStep({
    required this.id,
    required this.recipeId,
    required this.mealPrepTags,
  });

  RecipeStep.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        recipeId = json['recipeId'],
        mealPrepTags = List.from(json['recipeTagName'])
            .map((mpt) => MealPrepTag.fromJson(mpt))
            .toList();

  // Map<String, dynamic> toJson() {
  //   return {
  //     'id': id,
  //     'recipeId': recipeId,
  //     'mealPrepTags': mealPrepTags.map((mpt) => mpt.toJson()).toList(),
  //   };
  // }
}
