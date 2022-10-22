void main() {
  double bayar = 10000, discount = 0.3;

  if (bayar < 10000) {
    print('TOTAL HARGA : ${bayar * discount}');
  } else {
    print('TOTAL HARGA : $bayar');
  }
}
