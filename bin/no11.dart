void main() {
  // Kapasitas baterai awal
  int kapasitasBaterai = 100;

  // Persentase pengeluaran baterai per 5 menit
  int pengeluaranChatting = 1; // 1% setiap 5 menit
  int pengeluaranVideo = 2;     // 2% setiap 5 menit
  int pengeluaranGame = 3;      // 3% setiap 5 menit

  // Waktu penggunaan dalam menit
  int waktuChatting = 60; // waktu chatting
  int waktuVideo = 30;     // waktu menonton video
  int waktuGame = 45;      // waktu bermain game

  // Menghitung pengeluaran baterai
  int totalPengeluaranBaterai =
      (waktuChatting ~/ 5) * pengeluaranChatting +
      (waktuVideo ~/ 5) * pengeluaranVideo +
      (waktuGame ~/ 5) * pengeluaranGame;

  // Menghitung sisa baterai
  int sisaBaterai = kapasitasBaterai - totalPengeluaranBaterai;

  // Menampilkan hasil
  print('Sisa baterai setelah penggunaan: $sisaBaterai%');
}
