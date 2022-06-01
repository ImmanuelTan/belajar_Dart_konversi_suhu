import 'package:konversi_suhu/konversi_suhu.dart' as konversi_suhu;
import 'dart:io';

void main(List<String> arguments) {
  var cel,fah,re,kel;
  print("Aplikasi Konversi Suhu \n"
        "Pilih 1 untuk Konversi dari Celsius\n"
        "Pilih 2 untuk konversi dari Fahrenheit\n"
        "Pilih 3 untuk konversi dari Reamur\n"
        "Pilih 4 untuk konversi dari Kelvin");
  stdout.write("Pilihan : ");
  var pil = num.parse(stdin.readLineSync()!);
  stdout.write("masukkan suhu : ");
  var suhu = num.parse(stdin.readLineSync()!);

  try {
    if (pil == 1) {
      cel = suhu;
      fah = suhu * (9 / 5) + 32;
      re = suhu * (4 / 5);
      kel = suhu + 273;
    } else if (pil == 2) {
      fah = suhu;
      cel = (suhu - 32) * 5 / 9;
      re = (suhu - 32) * 4 / 9;
      kel = (suhu - 32) * 5 / 9 + 273;
    } else if (pil == 3) {
      re = suhu;
      cel = suhu * (5 / 4);
      fah = suhu * (9 / 4) + 32;
      kel = suhu * (5 / 4) + 273;
    } else if (pil == 4) {
      kel = suhu;
      cel = suhu - 273;
      fah = (suhu - 273) * 9 / 4 + 32;
      re = (suhu - 273) * 4 / 5;
    }
    print("Hasil dari konversi suhu \n"
        "Suhu Celcius     = $cel \n"
        "Suhu Fahrenheit  = $fah\n"
        "Suhu Reamur      = $re\n"
        "Suhu Kelvin      = $kel");
  }
  catch (e) {
    print('Exception happened: $e');
  }
}
