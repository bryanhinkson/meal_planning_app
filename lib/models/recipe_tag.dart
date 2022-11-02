import 'package:hive/hive.dart';

part 'recipe_tag.g.dart';

@HiveType(typeId: 4)
class RecipeTag extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  int recipeId;
  @HiveField(2)
  String recipeTagName;
  @HiveField(3)
  bool isDefault;
  @HiveField(4)
  int userId;

  RecipeTag({
    required this.id,
    required this.recipeId,
    required this.recipeTagName,
    required this.isDefault,
    required this.userId,
  });

  RecipeTag.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        recipeId = json['recipeId'],
        recipeTagName = json['recipeTagName'],
        isDefault = json['isDefault'],
        userId = json['userId'];

  // Map<String, dynamic> toJson() {
  //   return {
  //     'id': id,
  //     'recipeId': recipeId,
  //     'recipeTagName': recipeTagName,
  //     'isDefault': isDefault,
  //     'userId': userId,
  //   };
  // }
}
