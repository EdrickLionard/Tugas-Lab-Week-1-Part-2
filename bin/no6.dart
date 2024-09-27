import 'dart:io';

void main() {
  const int gajiPokok = 4000000;
  const int bonus = 200000;

  // Meminta input jumlah jam kerja per minggu
  stdout.write('Masukkan jumlah jam kerja per minggu: ');
  int? jamKerja = int.tryParse(stdin.readLineSync()!);

  // Function untuk validasi input
  if (jamKerja == null || jamKerja < 0) {
    print('Input tidak valid. Silakan masukkan angka yang lebih besar atau sama dengan 0.');
    return;
  }

  // Menghitung total gaji
  int totalGaji = gajiPokok;

  if (jamKerja > 40) {
    totalGaji += bonus; // Menambahkan bonus jika jam kerja lebih dari 40 jam
  }

  // Menampilkan hasil
  print('Total gaji untuk jam kerja $jamKerja: Rp $totalGaji');
}
