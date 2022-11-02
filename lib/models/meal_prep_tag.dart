import 'package:hive/hive.dart';

part 'meal_prep_tag.g.dart';

@HiveType(typeId: 2)
class MealPrepTag extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  int recipeId;
  @HiveField(2)
  String description;

  MealPrepTag({
    required this.id,
    required this.recipeId,
    required this.description,
  });

  MealPrepTag.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        recipeId = json['recipeId'],
        description = json['description'];

  // Map<String, dynamic> toJson() {
  //   return {
  //     'id': id,
  //     'recipeId': recipeId,
  //     'description': description,
  //   };
  // }
}
