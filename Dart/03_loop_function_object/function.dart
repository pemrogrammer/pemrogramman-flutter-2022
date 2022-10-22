void main() {
  greetings();

  String feedbackHallo = feedback();
  print(feedbackHallo);

  print(feedback());

  int hasilTambah = tambah();
  print(hasilTambah);

  dynamic geoLocationResult = geoLocation();
  print('long : ${geoLocationResult['long']}');
  print('lat : ${geoLocationResult['lat']}');

  print('Kurang : ${kurang(2, 3)}');

  int hasilKali = kali(10, 2, 2);
  print('hasil Kali : $hasilKali');

  int hasilKaliParameter = kaliNameParameter(10, c: 2, b: 3);
  print('hasil KaliParameter: $hasilKaliParameter');

  callMyName(name: 'Rahmat', age: 20);
}

int kurang(int a, int b) {
  return a - b;
}

int kali(int a, [int b = 1, int? c]) {
  if (c != null) return a * b * c;
  return a * b;
}

int kaliNameParameter(int a, {int b = 1, int? c}) {
  if (c != null) return a * b * c;
  return a * b;
}

void greetings() => print('Hallo!');

String feedback() => 'Hallo!!';

int tambah() {
  int hasil = 10 + 10;
  return hasil;
}

Map<String, int> geoLocation() {
  return {
    'long': 20,
    'lat': 30,
  };
}

void callMyName({required String name, int? age}) =>
    print('Hi, you $name, $age y.o');
