import 'dart:io';

void main() {
  const int hargaApel = 5000;
  const int hargaJeruk = 4000;

  // Input jumlah kilogram apel
  stdout.write('Masukkan jumlah kilogram apel yang dibeli: ');
  int? kgApel = int.tryParse(stdin.readLineSync()!);

  // Input jumlah kilogram jeruk
  stdout.write('Masukkan jumlah kilogram jeruk yang dibeli: ');
  int? kgJeruk = int.tryParse(stdin.readLineSync()!);

  // Hitung total harga
  int totalHarga = (kgApel! * hargaApel) + (kgJeruk! * hargaJeruk);

  // Tampilkan total harga
  print('Total harga yang harus dibayar: Rp $totalHarga');
}
