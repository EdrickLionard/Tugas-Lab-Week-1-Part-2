import 'dart:io';

void main() {
stdout.write('Masukkan suhu dalam celcius: ');
  double? celcius = double.tryParse(stdin.readLineSync()!);

  if (celcius == null) {
    print('Input tidak valid. Silahkan masukkan angka.');
    return;
  }

  double fahrenheit = (9 / 5) * celcius + 32;

  print('Konversi dari suhu celcius $celcius adalah : $fahrenheit');
}