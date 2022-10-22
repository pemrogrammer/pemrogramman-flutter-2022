class Manusia {
  final String name;
  final int age;
  int? _height;

  Manusia({required this.name, required this.age});

  set height(int height) => this._height = height;

  int get height => this._height!;

  Future<void> makan({String? makanan}) {
    print('${this.name} mengunyah ${makanan ?? ''}..');
    return Future.delayed(Duration(seconds: 3),
        () => print('${this.name} Kenyang makan $makanan'));
  }

  Future<void> sedangMakan({String? makanan}) async {
    await makan(makanan: makanan);
  }

  String jalan() => 'Pelan-pelan...';
}

class Binatang {
  final String name;
  final int legs;

  Binatang({required this.name, required this.legs});

  void walk() => legs > 2 ? print('merayap') : print('berdiri');
}

void main() async {
  Manusia egin = Manusia(name: 'Egin', age: 20);
  egin.height = 120;
  print(egin.name);
  print(egin.age);
  print(egin.height);
  await egin.makan(makanan: 'Roti');
  // egin.sedangMakan(makanan: 'Roti');
  print(egin.jalan());

  // Manusia andi = Manusia(name: 'Andi', age: 22);
  // print(andi.name);
  // print(andi.age);
  // andi.height = 200;
  // print(andi.height);
  // await andi.makan(makanan: 'Buah');
  // andi.jalan();

  // Binatang ayam = Binatang(name: 'Ayam', legs: 2);
  // print(ayam.name);
  // print(ayam.legs);
  // ayam.walk();
}
