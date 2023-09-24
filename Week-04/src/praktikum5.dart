// void main(){
//   // var record = ('first', a: 2, b: true, 'last');
//   // print(record);

//   (int, int) tukar((int, int) record) {
//   var (a, b) = record;
//   return (b, a);
// }

void main() {
  // var record = (1, 2);
  // print(record);
  // print(tukar(record));

  // (String, int) mahasiswa = ('Ahmad Bima Tristan Ibrahim', 2141720077);
  // print(mahasiswa);

  // var mahasiswa2 = ('first', a: 2, b: true, 'last');

  // print(mahasiswa2.$1); // Prints 'first'
  // print(mahasiswa2.a); // Prints 2
  // print(mahasiswa2.b); // Prints true
  // print(mahasiswa2.$2); // Prints 'last'

  var mahasiswa2 = ('Ahmad Bima Tristan Ibrahim', a: 2141720077, b: true, 'last');

  print(mahasiswa2.$1);
  print(mahasiswa2.a);
  print(mahasiswa2.b);
  print(mahasiswa2.$2);
}
