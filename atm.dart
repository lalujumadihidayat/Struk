import 'dart:io';
void main(){
String pembatas1 ='==============================';
String pembatas2 ='------------------------------';
String Ucapan ='HARAP SIMPAN SEBAGAI BUKTI';
DateTime now = DateTime.now();
String lokasi = 'MATARAM';


  stdout.write("masukkan nomor rekening anda :"); 
  var nomor =(stdin.readLineSync()!);

  stdout.write("masukkan jumlah uang(Rp) :");
  var jumlah =int.parse(stdin.readLineSync()!);

  stdout.write("taggal(dd/mm/yyyy):");
  var tanggal =int.parse(stdin.readLineSync()!);

  stdout.write("masukkan pin :");
  var pin =(stdin.readLineSync()!);
  stdout.write("masukkan keterangan :");
  var keterangan =stdin.readLineSync()!;

  print('''
    ++++++++++BANK BRI++++++++++++

    Tanggal       Waktu     Lokasi
    ${now.day}-${now.month}-${now.year}   ${now.hour}:${now.minute}:${now.second}  $lokasi

    $pembatas1
    nomor   :               $nomor
    jumlah  :Rp.            $jumlah
    tanggal :               $tanggal
    pin     :               $pin
    $pembatas2
    $keterangan


        $Ucapan
              TERIMA KASIH

''');
}