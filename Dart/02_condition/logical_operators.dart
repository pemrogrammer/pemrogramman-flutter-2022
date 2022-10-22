void main() {
  // bool nilai1 = true;
  // bool nilai2 = true;
  // bool nilai3 = false;

  // AND (&&) = semua nilai harus TRUE (+) = tambah
  // print('Hasil AND (&&) : ${nilai1 && nilai2}');
  // print('Hasil AND (&&) : ${nilai1 && nilai2 && nilai3}');

  // OR (||) = salah satu nilai harus TRUE (.) = kali
  // print('Hasil OR (||) : ${nilai1 || nilai2}');
  // print('Hasil OR (||) : ${nilai1 || nilai2 || nilai3}');

  // NOT (!) = kebalikan dari nilai yang ada
  // print('Hasil NOT (!) : ${!nilai1}');

  // print((nilai1 && nilai3) || nilai2);

  int hitung1 = 10, hitung2 = 20, hitung3 = 11;
  String hasil =
      (hitung1 < hitung2) && ((hitung2 > hitung3) || (hitung3 != hitung1))
          ? 'BENAR'
          : 'SALAH';
  print(hasil);
}
