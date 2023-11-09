void main (){
  String bon ="u221-601";
  String Kasir ="susi set";
  String pembatas1 ="=====================================";
  String pembatas2 ="-------------------------------------";
  String tgl = "12-09-2023";
  String jam = "17:09:30";
  String Thn = "V.2023.1.3";
  num indofood =8500;
  num ubm =     1000;
  num alfaair = 4400;
  num kantong =    1;

  print('''
  Bon $bon Kasir : $Kasir
  $pembatas1
  INDOFOOD WL KLP   1     $indofood   ${indofood * 1}
  UBM CHO WFR CRM   1     $ubm   ${ubm * 1}
  ALFA AIR MNRL 1   2     $alfaair   ${alfaair * 2}
  KANTONG PLSTIK    1     $kantong         ${kantong * 1}
  Disc             -1
  $pembatas2
  Total item        4             ${indofood + ubm + (alfaair * 2) + 1}
  Total disc.                        1
  Total Belanja                   ${indofood + ubm + (alfaair * 2) + 1}
  Pembulatan                         50
  Voucher                         25000
  Tunai                            3150
  Kembalian                         100
  PPN                               100
  $pembatas1
  Tgl. $tgl $jam $Thn
  $pembatas2
    Kritik & saran Hub. Telp.1234567
    Sms 0842557378 www.alfamartku.com
''');
}