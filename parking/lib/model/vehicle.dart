import 'package:parking/model/vehicle_type.dart';

class Vehicle {
  final String licensePlate;
  final String brand;
  final String model;
  final VehicleType vehicleType;
  String? color;
  int? yearOfManufacture;
  int? yearOfModel;

  Vehicle({
    required this.licensePlate,
    required this.brand,
    required this.model,
    required this.vehicleType,
    this.color,
    this.yearOfManufacture,
    this.yearOfModel,
  });
}
