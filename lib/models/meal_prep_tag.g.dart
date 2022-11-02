// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_prep_tag.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MealPrepTagAdapter extends TypeAdapter<MealPrepTag> {
  @override
  final int typeId = 2;

  @override
  MealPrepTag read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MealPrepTag(
      id: fields[0] as int,
      recipeId: fields[1] as int,
      description: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, MealPrepTag obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.recipeId)
      ..writeByte(2)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MealPrepTagAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
