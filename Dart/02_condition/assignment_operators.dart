void main() {
  // int nilai1 = 1;

  int? nilai2;
  nilai2 ??= 2; // nilai2 = nilai2 == null ? 2 : nilai2;
  print(nilai2);

  double? nilai3;
  nilai3 ??= 3.0; // nilai3 = nilai3 == null ? 3.0 : nilai3;
  print(nilai3);

  int? nilai5;
  nilai5 = nilai5 ?? 0; // nilai5 = nilai5 == null ? 0 : nilai5;
  print('Result ?: $nilai5');

  String? nilai4;
  nilai4 ??= 'String nih';
  print('Result ??= $nilai4');

  // Ternary Operators (shorthand if..else)
  int nilai6 = 11;
  nilai6 = (nilai6 == 10) ? nilai6 : 0;
  print('Result ?: $nilai6');

  // Tambah dan set nilainya
  int nilaiBaru = 10;
  nilaiBaru += 10; // nilaiBaru = nilaiBaru + 1
  print('Nilai baru: $nilaiBaru');

  // Kurang dan set nilainya
  int nilaiBaru1 = 10;
  nilaiBaru1 -= 1; // nilaiBaru1 = nilaiBaru1 - 1
  print('Nilai baru 1: $nilaiBaru1');

  // Kali dan set nilainya
  int nilaiBaru2 = 10;
  nilaiBaru2 *= 10; // nilaiBaru2 = nilaiBaru2 * 1
  print('Nilai baru 2: $nilaiBaru2');

  // Bagi dan set nilainya
  double nilaiBaru3 = 10;
  nilaiBaru3 /= 3; // nilaiBaru3 = nilaiBaru3 * 1
  print('Nilai baru 3: $nilaiBaru3');
}
