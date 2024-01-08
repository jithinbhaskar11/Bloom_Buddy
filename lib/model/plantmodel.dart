import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

part 'plantmodel.g.dart';

@HiveType(typeId: 1)
class PlantModel {
  @HiveField(0)
  String PlantName;
  @HiveField(1)
  String PlantLocation;
  @HiveField(2)
  String WateringDate;
  @HiveField(3)
  String FertilizingDate;

  PlantModel(
      {required this.PlantName,
      required this.PlantLocation,
      required this.WateringDate,
      required this.FertilizingDate});
}
