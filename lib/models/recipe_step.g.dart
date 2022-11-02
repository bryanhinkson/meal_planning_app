// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_step.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecipeStepAdapter extends TypeAdapter<RecipeStep> {
  @override
  final int typeId = 3;

  @override
  RecipeStep read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RecipeStep(
      id: fields[0] as int,
      recipeId: fields[1] as int,
      mealPrepTags: (fields[2] as List).cast<MealPrepTag>(),
    );
  }

  @override
  void write(BinaryWriter writer, RecipeStep obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.recipeId)
      ..writeByte(2)
      ..write(obj.mealPrepTags);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecipeStepAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
