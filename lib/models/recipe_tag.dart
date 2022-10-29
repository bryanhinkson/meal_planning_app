class RecipeTag {
  int id;
  int recipeId;
  String recipeTagName;
  bool isDefault;
  int userId;

  RecipeTag({
    required this.id,
    required this.recipeId,
    required this.recipeTagName,
    required this.isDefault,
    required this.userId,
  });
}
