// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plantmodel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlantModelAdapter extends TypeAdapter<PlantModel> {
  @override
  final int typeId = 1;

  @override
  PlantModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlantModel(
      PlantName: fields[0] as String,
      PlantLocation: fields[1] as String,
      WateringDate: fields[2] as DateTime,
      FertilizingDate: fields[3] as DateTime,
      imagePath: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, PlantModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.PlantName)
      ..writeByte(1)
      ..write(obj.PlantLocation)
      ..writeByte(2)
      ..write(obj.WateringDate)
      ..writeByte(3)
      ..write(obj.FertilizingDate)
      ..writeByte(4)
      ..write(obj.imagePath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlantModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
