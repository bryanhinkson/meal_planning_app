// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_tag.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecipeTagAdapter extends TypeAdapter<RecipeTag> {
  @override
  final int typeId = 4;

  @override
  RecipeTag read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RecipeTag(
      id: fields[0] as int,
      recipeId: fields[1] as int,
      recipeTagName: fields[2] as String,
      isDefault: fields[3] as bool,
      userId: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, RecipeTag obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.recipeId)
      ..writeByte(2)
      ..write(obj.recipeTagName)
      ..writeByte(3)
      ..write(obj.isDefault)
      ..writeByte(4)
      ..write(obj.userId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecipeTagAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
