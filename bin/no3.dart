import 'dart:io';

void main() {
  const double pi = 3.14;

 stdout.write('Masukkan diameter lingkaran: ');
  double? diameter = double.tryParse(stdin.readLineSync()!);

  if (diameter == null || diameter <= 0) {
    print('Input tidak valid. Masukkan angka yang lebih besar dari 0.');
    return;
  }

  double radius = diameter / 2;

  double luas = pi * radius * radius;

  print('Luas lingkaran dengan diameter $diameter adalah : $luas');
}