import 'dart:io';

void main() {
  stdout.write('Masukkan jumlah jam parkir : ');
  int? jamParkir = int.tryParse(stdin.readLineSync()!);

//Function untuk validasi input
  if (jamParkir == null || jamParkir < 0) {
    print('input tidak valid, masukkan angka yang lebih besar dari atau sama dengan 0.');
    return;
  }

//Function untuk menghitung total biaya parkir
  int totalHarga;

  if (jamParkir <= 2) {
    totalHarga = 2000 * jamParkir;
  } else {
    totalHarga = (2000 * 2) + (1000 * (jamParkir - 2));
}

print('Total biaya parkir untuk $jamParkir jam: Rp $totalHarga');
}