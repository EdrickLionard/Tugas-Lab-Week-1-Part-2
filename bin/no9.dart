void main() {
  // Daftar barang dengan berat dan nilai
  List<String> namaBarang = ['Makanan', 'Pakaian', 'Alat masak', 'Tenda', 'Sleeping bag'];
  List<int> beratBarang = [3, 2, 4, 5, 2];
  List<int> nilaiBarang = [50, 30, 40, 70, 20];

  int kapasitasRansel = 10; // Kapasitas maksimum ransel
  List<String> barangTerpilih = [];
  int maxNilai = 0;

  // Fungsi untuk mencari kombinasi barang
  void cariKombinasi(int index, int totalBerat, int totalNilai, List<String> currentSelection) {
    // Kondisi untuk menghentikan pencarian
    if (index == namaBarang.length) {
      // Cek jika total nilai lebih tinggi
      if (totalBerat <= kapasitasRansel && totalNilai > maxNilai) {
        maxNilai = totalNilai;
        barangTerpilih = List.from(currentSelection);
      }
      return;
    }

    // Mencoba untuk tidak mengambil barang saat ini
    cariKombinasi(index + 1, totalBerat, totalNilai, currentSelection);

    // Mencoba untuk mengambil barang saat ini
    currentSelection.add(namaBarang[index]);
    cariKombinasi(index + 1, totalBerat + beratBarang[index], totalNilai + nilaiBarang[index], currentSelection);
    currentSelection.removeLast(); // Kembali ke keadaan semula
  }

  // Memulai pencarian kombinasi
  cariKombinasi(0, 0, 0, []);

  // Menampilkan hasil
  print('Nilai maksimum yang dapat dibawa: $maxNilai');
  print('Barang yang dibawa: ${barangTerpilih.join(', ')}');
}
