void main() {
  // Konsumsi energi per jam dalam kWh
  const double konsumsiAC = 1.5; // AC
  const double konsumsiTV = 0.2;  // TV
  const double konsumsiLampu = 0.1; // Lampu

  // Lama penggunaan dalam jam
  const int lamaAC = 8;
  const int lamaTV = 5;
  const int lamaLampu = 12;

  // Menghitung total konsumsi energi harian
  double totalKonsumsi = (konsumsiAC * lamaAC) + (konsumsiTV * lamaTV) + (konsumsiLampu * lamaLampu);

  // Menampilkan hasil
  print('Total konsumsi energi harian keluarga: ${totalKonsumsi} kWh');
}