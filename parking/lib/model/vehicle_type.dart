enum VehicleType {
  motorcycle(
    value: 'motorcycle',
    label: 'Moto',
  ),
  car(
    value: 'car',
    label: 'Carro',
  );

  const VehicleType({
    required this.value,
    required this.label,
  });

  final String value;
  final String label;
}
