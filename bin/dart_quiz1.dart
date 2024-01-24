import 'dart:io';
import 'dart:math';

void main() {
  
  print('Kalkulator');
  print('NIP: ARN241-40181');
  print('Menu:');
  print('1. Penambahan');
  print('2. Perkalian');
  print('3. Faktorial');
  print('4. Ambil angka random');
  print('');
  print('Pilihan?');

  // meminta input pilihan menu
    int? menu = int.parse(stdin.readLineSync()!);
    switch(menu){
      case 1:
        menuPenambahan();
        break;
      case 2:
        menuPerkalian();
        break;
      case 3:
        menuFaktorial();
        break;
      case 4:
        menuAngkaRandom();
        break;
      default:
        print('Menu yang anda pilih tidak tersedia. Bye!!!');
    }
}

void menuPenambahan(){
  print("Anda memilih menu penambahan");
  print("Masukkan angka pertama: ");
  int angka1 = int.parse(stdin.readLineSync()!);
  print("Masukkan angka kedua: ");
  int angka2 = int.parse(stdin.readLineSync()!);

  int jumlah = angka1+angka2;

  print("Hasil penjumlahan adalah: $jumlah");
  print("Terima kasih telah menggunakan menu ini, sampai jumpa!!!");
}

void menuPerkalian(){
  print("Anda memilih menu perkalian");
  print("Masukkan angka pertama: ");
  int angka1 = int.parse(stdin.readLineSync()!);
  print("Masukkan angka kedua: ");
  int angka2 = int.parse(stdin.readLineSync()!);

  int hasil = angka1*angka2;
  print("Hasil perkalian adalah: $hasil");
  print("Terima kasih telah menggunakan menu ini, sampai jumpa!!!");
}

void menuFaktorial(){
  print("Anda memilih menu faktorial");
  print("Masukkan angka: ");
  int angka1 = int.parse(stdin.readLineSync()!);
  int hasilFaktorial = 1;

  for (int i=1;i<=angka1;i++){
    hasilFaktorial *= i;
  }

  print("Hasil faktorial adalah: $hasilFaktorial");
  print("Terima kasih telah menggunakan menu ini, sampai jumpa!!!");
}

void menuAngkaRandom(){
  print("Anda memilih menu ambil angka random");
  print("Masukkan batas bawahnya: ");
  int batasBawah = int.parse(stdin.readLineSync()!);
  print("Masukkan batas atasnya: ");
  int batasAtas = int.parse(stdin.readLineSync()!);

  int randomPick = batasBawah + Random().nextInt((batasAtas + 1) - batasBawah);

  print("Angka random yang terpilih adalah: $randomPick");
  print("Terima kasih telah menggunakan menu ini, sampai jumpa!!!");
}
