## Week 4 Collections, Records, and Functions in Dart

Wildan Hafidz Mauludin

2141720007

## Table of Content
- [Week 4 Collections, Records, and Functions in Dart](#week-4-collections-records-and-functions-in-dart)
- [Table of Content](#table-of-content)
- [Praktikum 1: Eksperimen Tipe Data List](#praktikum-1-eksperimen-tipe-data-list)
  - [Langkah 1:](#langkah-1)
  - [Langkah 2:](#langkah-2)
  - [Langkah 3:](#langkah-3)
- [Praktikum 2: Eksperimen Tipe Data Set](#praktikum-2-eksperimen-tipe-data-set)
  - [Langkah 1:](#langkah-1-1)
  - [Langkah 2:](#langkah-2-1)
  - [Langkah 3:](#langkah-3-1)
  - [Langkah 4:](#langkah-4)
- [Praktikum 3: Eksperimen Tipe Data Maps](#praktikum-3-eksperimen-tipe-data-maps)
  - [Langkah 1:](#langkah-1-2)
  - [Langkah 2:](#langkah-2-2)
  - [Langkah 3:](#langkah-3-2)
  - [Langkah 4](#langkah-4-1)
- [Praktikum 4: Eksperimen Tipe Data List: Spread dan Control-flow Operators](#praktikum-4-eksperimen-tipe-data-list-spread-dan-control-flow-operators)
  - [Langkah 1:](#langkah-1-3)
  - [Langkah 2:](#langkah-2-3)
  - [Langkah 3:](#langkah-3-3)
  - [Langkah 4:](#langkah-4-2)
  - [Langkah 5:](#langkah-5)
- [Praktikum 5: Eksperimen Tipe Data Records](#praktikum-5-eksperimen-tipe-data-records)
  - [Langkah 1:](#langkah-1-4)
  - [Langkah 2:](#langkah-2-4)
  - [Langkah 3:](#langkah-3-4)
  - [Langkah 4:](#langkah-4-3)
  - [Langkah 5:](#langkah-5-1)
- [Tugas Praktikum](#tugas-praktikum)

## Praktikum 1: Eksperimen Tipe Data List

### Langkah 1:

Ketik atau salin kode program berikut ke dalam ```void main()```.

```dart
void main() {
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);
  print(list.length);
  print(list[1]);

  list[1] = 1;
  assert(list[1] == 1);
  print(list[1]);
}
```

### Langkah 2:

Silakan coba eksekusi ```(Run)``` kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!

Jawab:

![Output](docs/Praktikum%201/ss1.png)

Kode pada langkah 1 digunakan untuk mengilustrasikan cara kerja list dalam ```Dart```, memeriksa panjang list, mengakses elemen list, mengubah nilai elemen list, dan mengonfirmasi perubahan nilai dengan pernyataan asertif.

### Langkah 3:

Ubah kode pada langkah 1 menjadi variabel final yang mempunyai index = 5 dengan default value = ```null```. Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. Lalu print dan capture hasilnya.

```dart
void main() {
  final List<String?> list = List.filled(5, null);
  list[1] = "Nama: [Ahmad Bima Tristan Ibrahim]";
  list[2] = "NIM: [2141720077]";

  for (var item in list) {
    print(item);
  }
}
```

Apa yang terjadi? Jika terjadi error, silakan perbaiki.

Jawab: 

![Output](docs/Praktikum%201/ss2.png)

Kode ini digunakan untuk membuat, mengisi, dan mencetak elemen-elemen dalam sebuah list.

Elemen ```index 1``` dan ```index 2``` dari list telah diisi dengan nama dan NIM, sedangkan elemen lainnya memiliki nilai awal yang masih null.

## Praktikum 2: Eksperimen Tipe Data Set

### Langkah 1:

Ketik atau salin kode program berikut ke dalam fungsi ```main()```.

```dart
void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
}
```

### Langkah 2:

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! 

Jawab:

![Output](docs/Praktikum%202/ss1.png)

Mencetak semua elemen dalam Set ```halogens``` ke konsol dalam format yang sesuai dengan tipe data Set.

### Langkah 3:

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```dart
void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {};
  var names3 = {}; 

  print(names1);
  print(names2);
  print(names3);
}
```

Apa yang terjadi? Jika terjadi error, silakan perbaiki namun tetap menggunakan ketiga variabel tersebut. 

Jawab:

![Output](docs/Praktikum%202/ss2.png)

Pada hasil tersebut, ```names1``` dan``` names2``` adalah set yang kosong, sedangkan ```names3``` sebenarnya adalah sebuah map kosong.

### Langkah 4:

Tambahkan elemen nama dan NIM Anda pada kedua variabel Set tersebut dengan dua fungsi berbeda yaitu ```.add()``` dan .```addAll()```. Untuk variabel Map dihapus, nanti kita coba di praktikum selanjutnya.

Dokumentasikan code dan hasil di console, lalu buat laporannya.

Jawab:

```dart
void main() {
  var names1 = <String>{};
  Set<String> names2 = {};
  var names3 = {};

  names1.add('Ahmad Bima Tristan Ibrahim');
  names2.addAll(['Ahmad Bima Tristan Ibrahim', '2141720077']);

  print(names1);
  print(names2);
  print(names3);
}
```

Dalam kode di atas, saya membuat dua variabel Set kosong, yaitu ```names1``` dan ```names2```. 

Kemudian, saya menambahkan elemen-elemen (nama dan NIM) ke dalam Set ```names1``` menggunakan ```.add()``` dan ke dalam Set ```names2``` menggunakan ```.addAll()```, untuk mencetak isi dari kedua variabel Set tersebut.

Result:

![Output](docs/Praktikum%202/ss3.png)

## Praktikum 3: Eksperimen Tipe Data Maps

### Langkah 1:

Ketik atau salin kode program berikut ke dalam fungsi ```main().```

```dart
void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);
}
```

### Langkah 2:

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

Jawab:

![Output](docs/Praktikum%203/ss1.png)

Dalam kode di atas, map ```gifts``` mencetak kunci dan nilainya dengan tipe data yang berbeda, sementara map ```nobleGases``` juga mencetak kunci namun nilainya menggunakan tipe data yang berbeda sesuai dengan deklarasinya.

### Langkah 3:

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```dart
void main() {
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  print(mhs1);
  print(mhs2);
}
```

Apa yang terjadi? Jika terjadi error, silakan perbaiki.

Jawab:

![Output](docs/Praktikum%203/ss2.png)

Dalam kode di atas, kode tersebut mencetak isi dari semua map yang telah di buat. Map mhs1 awalnya kosong, dan kemudian mengisinya dengan pasangan kunci-nilai. Map mhs2 menggantikan nilai-nilai dalam map nobleGases yang telah ada sebelumnya.

### Langkah 4

Tambahkan elemen nama dan NIM Anda pada tiap variabel di atas (```gifts```, ```nobleGases```, ```mhs1```, dan ```mhs2```). 

```dart
void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();

  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  mhs1['Nama'] = 'Ahmad Bima Tristan Ibrahim';
  mhs1['Nim'] = '2141720077';

  mhs2[1] = 'Ahmad Bima Tristan Ibrahim';
  mhs2[2] = '2141720077';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
```

Jawab:

![Output](docs/Praktikum%203/ss3.png)

## Praktikum 4: Eksperimen Tipe Data List: Spread dan Control-flow Operators

### Langkah 1:

Ketik atau salin kode program berikut ke dalam fungsi ```main().```

```dart
void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list1);
  print(list2);
  print(list2.length);
}
```

### Langkah 2:

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

Jawab:

Terjadi error karena variabel list1 tidak didefinisikan. 

![Output](docs/Praktikum%204/ss1.png)
  
Kode dapat diperbaiki seperti ini:

```dart
void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);
}
```

Result:

![Output](docs/Praktikum%204/ss2.png)

### Langkah 3:

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```dart
void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);
}
```

Apa yang terjadi? Jika terjadi error, silakan perbaiki.

Jawab:

Pada kode ini, terjadi `error`.

![Output](docs/Praktikum%204/ss3.png)

Kode dapat diperbaiki seperti ini:

```dart
void main() {
  var list1 = [1, 2, 3];
  var list2 = [0, ...list1];
  print(list1);
  print(list2);
  print(list2.length);

  var list = [1, 2, null];
  print(list);
  var list3 = [0, ...list];
  print(list3.length);
}
```

Result:

![Output](docs/Praktikum%204/ss4.png)

Tambahkan variabel list berisi NIM Anda menggunakan Spread Operators. 

```dart
void main() {
  List<int?> list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  list = [1, 2, null];
  print(list);
  var list3 = [0, ...list];
  print(list3.length);

  var nimA = [2, 1, 4, 1, 7];
  var nimB = [2, 0, 0, 7, 7];
  var list4 = [...nimA, ...nimB];
  print(list4);
  print(list4.length);
}
```

Result:

![Output](docs/Praktikum%204/ss5.png)

### Langkah 4:

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```dart
void main() {
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
}
```

Apa yang terjadi? Jika terjadi error, silakan perbaiki. 

Jawab:

![Output](docs/Praktikum%204/ss6.png)

Terjadi error karena variable promoActive tidak didefinisikan.

Kode dapat diperbaiki seperti ini:

```dart
void main() {
  var promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
}
```

Tunjukkan hasilnya jika variabel ```promoActive``` ketika ```true``` dan ```false```.

Jawab:

```True```

![Output](docs/Praktikum%204/ss7.png)

```False```

![Output](docs/Praktikum%204/ss8.png)

### Langkah 5:

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```dart
void main() {
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory'
  ];
  print(nav2);
}
```

Apa yang terjadi? Jika terjadi error, silakan perbaiki. 

Jawab:

![Output](docs/Praktikum%204/ss9.png)

Terjadi error karena variable login tidak didefinisikan. 

Kode dapat diperbaiki seperti ini:

```dart
void main() {
  String login = 'Manager';

  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory'
  ];
  
  print(nav2);
}
```
Tunjukkan hasilnya jika variabel ```login``` mempunyai kondisi lain.

Jawab:

```login = manager```

![Output](docs/Praktikum%204/ss10.png)

```login user```

![Output](docs/Praktikum%204/ss11.png)

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```dart
void main() {
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
```

Apa yang terjadi? Jika terjadi error, silakan perbaiki. 

![Output](docs/Praktikum%204/ss12.png)

Jelaskan manfaat ```Collection For``` 

Jawab:

Collection for digunakan untuk list, map, dan set literals. Hal ini dapat menggunakan operator ini untuk membangun collections menggunakan pengulangan ``` (for)```.

## Praktikum 5: Eksperimen Tipe Data Records

### Langkah 1:

Ketik atau salin kode program berikut ke dalam fungsi ```main().```

```dart
void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);
}
```

### Langkah 2:

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

Jawab:

![Output](docs/Praktikum%205/ss1.png)

Kode diatas akan mencetak variabel record yang berisi 4 elemen.
  
### Langkah 3:

Tambahkan kode program berikut di luar scope ```void main()```, lalu coba eksekusi (Run) kode Anda.

```dart
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main() {
  var record = (1, 2);
  print(record);
  print(tukar(record));
}
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. 

Gunakan fungsi ```tukar()``` di dalam ```main() ```sehingga tampak jelas proses pertukaran value field di dalam Records

Jawab:

![Output](docs/Praktikum%205/ss2.png)

Kode diatas akan melakukan pertukaran nilai dari variabel record. Lalu akan mencetak nilai dari variabel record yang sudah ditukar.

### Langkah 4:

Tambahkan kode program berikut di dalam scope ```void main()```, lalu coba eksekusi (Run) kode Anda.

```dart
void main() {
  (String, int) mahasiswa;
  print(mahasiswa);
}
```

Apa yang terjadi? Jika terjadi error, silakan perbaiki. 

Jawab:

![Output](docs/Praktikum%205/ss3.png)

Kode tersebut menghasilkan error karena nilainya belum diinisialisasi. 

Inisialisasi field nama dan NIM Anda pada variabel record ```mahasiswa``` di atas. 

Kode setelah di inisialisasi field nama dan NIM

```dart
void main() {
  (String, int) mahasiswa = ('Ahmad Bima Tristan Ibrahim', 2141720077);
  print(mahasiswa);
}
```

![Output](docs/Praktikum%205/ss4.png)

### Langkah 5:

Tambahkan kode program berikut di dalam scope ```void main()```, lalu coba eksekusi (Run) kode Anda.

```dart
void main() {
  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. 

Jawab:

![Output](docs/Praktikum%205/ss5.png)

Gantilah salah satu isi record dengan nama dan NIM Anda, lalu dokumentasikan hasilnya dan buat laporannya!

```dart
void main() {
  var mahasiswa2 = ('Ahmad Bima Tristan Ibrahim', a: 2141720077, b: true, 'last');

  print(mahasiswa2.$1);
  print(mahasiswa2.a);
  print(mahasiswa2.b);
  print(mahasiswa2.$2);
}
```

Jawab:

![Output](docs/Praktikum%205/ss6.png)

## Tugas Praktikum 

1. Jelaskan yang dimaksud Functions dalam bahasa Dart!
  
Jawab:

Function atau Fungsi adalah blok penyusun kode yang dapat dibaca, dipelihara, dan digunakan kembali. Function adalah sekumpulan pernyataan untuk melakukan tugas tertentu. Function mengatur program ke dalam blok kode logis.

2. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!
  
Jawab:

- Positional Parameters 

Parameter-posisi diberikan berdasarkan urutan dalam daftar parameter fungsi.

```dart
void printName(String firstName, String lastName) {
  print("$firstName $lastName");
}

printName("Bima", "Tristan"); // Memanggil fungsi dengan parameter posisi
```

- Named Parameters 

Parameter yang diberi nama. Named parameter dapat diberikan nilai default. Named parameter dapat diberikan nilai default dengan menggunakan =. 

```dart
void printPersonInfo({String name, int age}) {
  print("Name: $name, Age: $age");
}

printPersonInfo(name: "Tristan", age: 20); // Memanggil fungsi dengan parameter bernama
```

Required Parameters 

Parameter yang mengharuskan kita mengirimkan nilai dalam urutan tertentu saat pemanggilan fungsi.

```dart
void printMessage(String message, {required String sender}) {
  print("$sender says: $message");
}

printMessage("Hello", sender: "Tristan"); // Memanggil fungsi dengan parameter wajib
```

3. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!

Jawab:

"functions as first-class objects" berarti bahwa fungsi dianggap sebagai objek yang dapat diperlakukan seperti objek lainnya, seperti variabel, string, atau bilangan.

```dart
int Function(int, int) add = (int a, int b) {
  return a + b;
};

int result = add(3, 5); // Memanggil fungsi yang disimpan dalam variabel
```

4. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!

Jawab:

Anonymous functions (fungsi anonim) adalah fungsi yang tidak memiliki nama. 

```dart
var add = (int a, int b) => a + b; // Mendefinisikan anonymous function dan menyimpannya dalam variabel

int result = add(3, 5); 
List<int> numbers = [1, 2, 3, 4, 5];
numbers.forEach((number) {
  print(number * 2); 
});
```

5. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!

Jawab:

Lexical Scope 

Ruang lingkup di mana nama variabel dapat diakses dalam sebuah program. Di dalam bahasa Dart, lexical scope ditentukan oleh penempatan suatu fungsi.

Contoh:

```dart
var x = 10;

void contohFungsi() {
  print(x); // Dapat mengakses variabel x yang berada di luar fungsi.
}
```

Lexical Closures

Fungsi yang dapat mengakses variabel dari ruang lingkup lexical tempat fungsi tersebut didefinisikan. Fungsi ini dapat menutup variabel tersebut dan membawanya bersama saat fungsi dipanggil di tempat lain.

Contoh:

```dart 
Function contohPenutupan() {
  var x = 10;
  return () {
    print(x); // Fungsi ini memiliki akses ke variabel x dari lingkup yang lebih tinggi.
  };
}
```

6. Jelaskan dengan contoh cara membuat return multiple value di Functions!

Jawab:

Untuk me-return sebuah nilai ganda (multiple value), kita dapat memanfaatkan beberapa cara. Salah satunya adalah memanfaatkan Record

 ```dart
 (String, int) getData() {
   return ('Ahmad Bima Tristan Ibrahim', 2141720077);
 }

void main() {
  var (nama, nim) = getData();

  print(nama);
  print(nim);
}
```