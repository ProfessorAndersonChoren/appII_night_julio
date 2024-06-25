import 'package:flutter/material.dart';
import 'package:parking/model/vacancy.dart';
import 'package:parking/model/vehicle.dart';

class Ticket {
  final int number;
  final Vacancy vacancy;
  final Vehicle vehicle;
  final TimeOfDay entryTime;
  TimeOfDay? departureTime;
  double? amount;

  Ticket({
    required this.number,
    required this.vacancy,
    required this.vehicle,
    required this.entryTime,
    this.departureTime,
    this.amount,
  }) {
    if (vehicle.vehicleType != vacancy.vehicleType) {
      throw ArgumentError('Tipo de vaga incompatível com o veículo!!!');
    }
  }
}
