void main() {
  // List<String> listString = ['String1', 'String2', 'String3', 'String4'];
  // List<int> listInt = [1, 12, 23, 33];
  List<Map<String, int>> listMap = [
    {'value': 10},
    {'value': 20},
    {'value': 30},
    {'value': 40},
    {'value': 50},
  ];

  // For Loop
  // for (int i = 0; i < listMap.length; i++) {
  //   print(listMap[i]['value']);
  // }

  // For In
  for (var data in listMap) {
    // if (data['value']! < 30) {
    //   print(data['value']);
    // }

    switch (data['value']) {
      case 10:
        print('Sangat Rendah');
        break;
      case 20:
        print('Rendah');
        break;
      case 30:
        print('Sedang');
        break;
      default:
        print('Kosong');
        break;
    }
  }
}
