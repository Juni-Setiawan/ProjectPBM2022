class MobilModel{
  String gambar;
  String nama;
  String plat;
  String merek;
  String model;
  String varian;
  String bahan;
  String mesin;
  String kursi;
  String harga;

  MobilModel({
    required this.gambar,
    required this.nama,
    required this.plat,
    required this.merek,
    required this.model,
    required this.varian,
    required this.bahan,
    required this.mesin,
    required this.kursi,
    required this.harga,
  });
}

var mobilList = [
  MobilModel(
      gambar: 'assets/images/toyota.png',
      nama: "Toyota Avanza 1.3 E MT",
      plat: "P 3821 AA",
      merek: "Toyota",
      model: "Toyota Avanza",
      varian: "Avanza 1.3 EMT",
      bahan: "Bensin",
      mesin: "1329 cc",
      kursi: "7",
      harga: "100.000"
  ),
  MobilModel(
      gambar: 'assets/images/honda.png',
      nama: "Honda HR-V 1.5L E CVT",
      plat: "D 1221 AA",
      merek: "Honda",
      model: "Honda HR-V",
      varian: "HR-V 1.5L E CVT",
      bahan: "Bensin",
      mesin: "3529 CC",
      kursi: "4",
      harga: "125.000"
  ),
  MobilModel(
      gambar: 'assets/images/mercedes.png',
      nama: "Mercedes Benz CL Class",
      plat: "F 321 GG",
      merek: "Mercedes",
      model: "Mercedes Benz",
      varian: "CL Class",
      bahan: "Bensin",
      mesin: "4399 CC",
      kursi: "4",
      harga: "150.000"
  ),
  MobilModel(
      gambar: 'assets/images/bmw.png',
      nama: "BMW 320i",
      plat: "B 5555 NT",
      merek: "BMW",
      model: "BMW 320i",
      varian: "BMW 320i",
      bahan: "Bensin",
      mesin: "2329 CC",
      kursi: "7",
      harga: "100.000"
  ),
];