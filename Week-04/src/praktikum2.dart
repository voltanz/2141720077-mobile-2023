void main() {
  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);

  // var names1 = <String>{};
  // Set<String> names2 = {}; // This works, too.
  // var names3 = {}; // Creates a map, not a set.

  // print(names1);
  // print(names2);
  // print(names3);

  var names1 = <String>{};
  Set<String> names2 = {};
  var names3 = {};

  names1.add('Ahmad Bima Tristan Ibrahim');
  names2.addAll(['Ahmad Bima Tristan Ibrahim', '2141720077']);

  print(names1);
  print(names2);
  print(names3);
}