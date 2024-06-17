import 'dart:io';

void main() {
  print('Digite a temperatura em Celsius:');
  String text = stdin.readLineSync()!;
  int celsius = int.parse(text);
  num fahrenheit = convertToFahrenheit(celsius);
  print('$celsius°C é igual à $fahrenheit°F');
}

num convertToFahrenheit(int celsius) => celsius * 1.8 + 32;
