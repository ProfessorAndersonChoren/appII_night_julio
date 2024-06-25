import 'package:parking/model/vehicle_type.dart';

class Vacancy {
  final int number;
  final String description;
  final VehicleType vehicleType;

  Vacancy({
    required this.number,
    required this.description,
    required this.vehicleType,
  });

  @override
  String toString() {
    return number.toString().padLeft(4, '0');
  }
}
