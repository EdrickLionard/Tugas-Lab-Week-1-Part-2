void main() {
  // Daftar nasabah yang datang
  List<String> nasabah = ['A', 'B', 'C', 'D', 'E'];

  // Fungsi untuk melayani nasabah
  void layaniNasabah(int index) {
    // Jika sudah melayani semua nasabah, keluar dari fungsi
    if (index >= nasabah.length) {
      return;
    }

    // Tentukan loket yang digunakan
    String loket = (index % 2 == 0) ? 'Loket 1' : 'Loket 2';

    // Tampilkan informasi pelayanan
    print('Nasabah ${nasabah[index]} dilayani di $loket');

    // Lanjutkan ke nasabah berikutnya
    layaniNasabah(index + 1);
  }

  // Memulai pelayanan nasabah
  layaniNasabah(0);
}
