class Ingredient {
  int id;
  int recipeId;
  String name;
  int amount; // 1
  String unit; // cups

  Ingredient({
    required this.id,
    required this.recipeId,
    required this.name,
    required this.amount,
    required this.unit,
  });
}
