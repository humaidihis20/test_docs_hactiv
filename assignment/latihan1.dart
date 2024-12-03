import 'dart:io';  
import 'dart:math';  

void main() {   
  Random random = Random();  
  int angkaAcak = random.nextInt(100) + 1; 
  int masukan_tebakan = 0; 
  int masukkan = 0;

  print('Selamat datang di permainan tebak angka!');  
  print('Saya telah memilih angka antara 1 hingga 100. Coba tebak!');  

  while (masukan_tebakan != angkaAcak) {  
    stdout.write('Masukkan tebakan Anda: ');  
    masukan_tebakan = int.parse(stdin.readLineSync() ?? '0');  
    masukkan++;  
    if (masukan_tebakan < angkaAcak) {  
      print('Tebakan terlalu rendah. Coba lagi!');  
    } else if (masukan_tebakan > angkaAcak) {  
      print('Tebakan terlalu tinggi. Coba lagi!');  
    } else {  
      print('Tebakan benar! Angka yang benar adalah ${angkaAcak}');  
      print('Anda berhasil dalam ${masukkan} tebakan');  
    }  
  }  
}  