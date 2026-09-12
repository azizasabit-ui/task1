void main() {
  // TASK 1
  multiplicationTable();
}
void multiplicationTable() {
  print('TASK 1: Multiplication table 1-10');

  for (int digit = 1; digit <= 10; digit++) {
    for (int i = 1; i <= 10; i++) {
      print('$digit * $i = ${digit * i}');
    }
    print('');
  }
}