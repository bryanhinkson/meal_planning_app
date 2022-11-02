import 'package:hive/hive.dart';

part 'ingredient.g.dart';

@HiveType(typeId: 1)
class Ingredient extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  int recipeId;
  @HiveField(2)
  String name;
  @HiveField(3)
  int amount; // 1
  @HiveField(4)
  String unit; // cups

  Ingredient({
    required this.id,
    required this.recipeId,
    required this.name,
    required this.amount,
    required this.unit,
  });

  Ingredient.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        recipeId = json['recipeId'],
        name = json['name'],
        amount = json['amount'],
        unit = json['unit'];

  // Map<String, dynamic> toJson() {
  //   return {
  //     'id': id,
  //     'recipeId': recipeId,
  //     'name': name,
  //     'amount': amount,
  //     'unit': unit,
  //   };
  // }
}
