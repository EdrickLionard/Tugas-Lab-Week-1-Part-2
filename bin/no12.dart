void main() {
  // Kapasitas produksi per jam
  int kapasitasProduksiPerJam = 20;

  // Jam kerja per hari
  int jamKerjaPerHari = 8;

  // Jumlah hari kerja dalam seminggu
  int hariKerjaPerMinggu = 5;

  // Menghitung total unit barang yang dihasilkan dalam satu minggu
  int totalUnitPerMinggu = kapasitasProduksiPerJam * jamKerjaPerHari * hariKerjaPerMinggu;

  // Menampilkan hasil
  print('Total unit barang yang dihasilkan dalam satu minggu: $totalUnitPerMinggu');
}
