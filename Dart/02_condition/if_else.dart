void main() {
  int data1 = 11;

  if (data1 <= 10) {
    if (data1 < 5)
      print('LEBIH KECIL DARI 5');
    else
      print('LEBIH KECIL ATAU SAMA DENGAN 10');
  } else if (data1 > 10 && data1 < 20)
    print('DATANYA BERNILAI BELASAN');
  else
    print('TIDAK LEBIH BESAR DARI 20');

  // String hasil = (data1 <= 10)
  //     ? ((data1 < 5) ? 'DATA LEBIH KECIL DARI 5' : 'DATA LEBIH KECIL DARI 10')
  //     : 'DATA LEBIH BESAR DARI 10';
  // print(hasil);
}
