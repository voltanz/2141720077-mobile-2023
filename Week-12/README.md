### Week 12

### Pemrograman Asynchronous

Ahmad Bima Tristan Ibrahim

2141720077

### **Praktikum 1: Mengunduh Data dari Web Service (API)**

Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Jawablah di laporan praktikum Anda pada setiap soal yang ada di beberapa langkah praktikum ini.

<p>

**Langkah 1: Buat Project Baru**

Buatlah sebuah project flutter baru dengan nama **books** di folder **src week-12** repository GitHub Anda.

Kemudian Tambahkan dependensi ``http`` dengan mengetik perintah berikut di terminal.

```dart
flutter pub add http
```

**Langkah 2: Cek file pubspec.yaml**

Jika berhasil install plugin, pastikan plugin ``http`` telah ada di file ``pubspec`` ini seperti berikut.

```dart
dependencies:
  flutter:
    sdk: flutter
  http: ^1.1.0
```

**Langkah 3: Buka file main.dart**

Ketiklah kode seperti berikut ini

>**Soal 1**
>
>Tambahkan **nama panggilan Anda** pada ``title`` app sebagai identitas hasil pekerjaan Anda.

```dart
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FuturePage(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bima Tristan'),
      ),
      body: Center(
        child: Column(children: [
          const Spacer(),
          ElevatedButton(
            child: const Text('GO!'),
            onPressed: () {},
          ),
          const Spacer(),
          Text(result),
          const Spacer(),
          const CircularProgressIndicator(),
          const Spacer(),
        ]),
      ),
    );
  }
}
```
Hasil Output Soal 1
![Output](docs/soal1.gif)

Catatan:<p>
Tidak ada yang spesial dengan kode di ``main.dart`` tersebut. Perlu diperhatikan di kode tersebut terdapat widget ``CircularProgressIndicator`` yang akan menampilkan animasi berputar secara terus-menerus, itu pertanda bagus bahwa aplikasi Anda responsif (tidak freeze/lag). Ketika animasi terlihat berhenti, itu berarti UI menunggu proses lain sampai selesai.

**Langkah 4: Tambah method getData()**

Tambahkan method ini ke dalam ``class _FuturePageState`` yang berguna untuk mengambil data dari API Google Books.

```dart
Future<Response> getData() async {
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/junbDwAAQBAJ';
    Uri url = Uri.https(authority, path);
    return http.get(url);
  }
```

>**Soal 2**
>
>- Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut. Caranya ambil di URL browser Anda seperti gambar berikut ini.
<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//29d0179018edd8d4.png">
>- Kemudian cobalah akses di browser URI tersebut dengan lengkap seperti ini. Jika menampilkan data JSON, maka Anda telah berhasil. Lakukan capture milik Anda dan tulis di ``README`` pada laporan praktikum. Lalu lakukan commit dengan pesan **"W12: Soal 2"**.
<img src="https://jti-polinema.github.io/flutter-codelab/12-async/img//d441815f1bdf8e8.png">

Jawab: 
- ![Output](docs/ss1.png)
- ![Output](docs/ss2.png)

**Langkah 5: Tambah kode di ElevatedButton**

Tambahkan kode pada ``onPressed`` di ``ElevatedButton`` seperti berikut.

```dart
ElevatedButton(
            child: Text('GO!'),
            onPressed: () {
              setState(() {});
              getData()
              .then((value) {
                result = value.body.toString().substring(0, 450);
                setState(() {});
              }).catchError((_){
                result = 'An error occurred';
                setState(() {});
              });
            },
          ),
```
Lakukan run aplikasi Flutter Anda. Anda akan melihat tampilan akhir seperti gambar berikut. Jika masih terdapat error, silakan diperbaiki hingga bisa running.

>**Soal 3**
>- Jelaskan maksud kode langkah 5 tersebut terkait ``substring`` dan ``catchError``!
>- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan **"W12: Soal 3"**.

Jawab: 
- substring() adalah metode untuk mengambil substring dari string. Substring merupakan bagian dari string yang dimulai dari indeks tertentu dan berakhir pada indeks tertentu. Metode substring() menerima dua parameter, yaitu indeks awal dan indeks akhir. Indeks awal adalah indeks karakter pertama yang ingin diambil, dan indeks akhir adalah indeks karakter terakhir yang ingin diambil. 
- catchError() adalah metode untuk menangani kesalahan. Metode catchError() menerima satu parameter, yaitu fungsi yang akan dijalankan jika terjadi kesalahan. Fungsi tersebut akan menerima objek kesalahan sebagai parameter. Kode di atas menggunakan substring() untuk mengambil 450 karakter pertama dari respons API. Jika terjadi kesalahan saat mengambil respons API, maka kode tersebut akan menggunakan catchError() untuk menampilkan pesan kesalahan "An error occurred".
- ![Output](docs/soal2.gif)

### **Praktikum 2: Menggunakan await/async untuk menghindari callbacks**

<p>

Ada alternatif penggunaan Future yang lebih clean, mudah dibaca dan dirawat, yaitu pola async/await. Intinya pada dua kata kunci ini:
- ``async`` digunakan untuk menandai suatu method sebagai asynchronous dan itu harus ditambahkan di depan kode function.
- ``await`` digunakan untuk memerintahkan menunggu sampai eksekusi suatu function itu selesai dan mengembalikan sebuah ``value``. Untuk ``then`` bisa digunakan pada jenis method apapun, sedangkan ``await`` hanya bekerja di dalam method ``async``.

<p>

**Langkah 1: Buka file main.dart**

Tambahkan tiga method berisi kode seperti berikut di dalam ``class _FuturePageState``.

```dart
Future<int> returnOneAsync() async {
  await Future.delayed(const Duration(seconds: 3));
  return 1;
}

Future<int> returnTwoAsync() async {
  await Future.delayed(const Duration(seconds: 3));
  return 2;
}

Future<int> returnThreeAsync() async {
  await Future.delayed(const Duration(seconds: 3));
  return 3;
}
```

**Langkah 2: Tambah method count()**

Lalu tambahkan lagi method ini di bawah ketiga method sebelumnya.

```dart
Future count() async {
    int total = 0;
    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();
    setState(() {
      result = total.toString();
    });
  }
```

**Langkah 3: Panggil count()**

Lakukan comment kode sebelumnya, ubah isi kode ``onPressed()`` menjadi seperti berikut.

```dart
ElevatedButton(
            child: const Text('GO!'),
            onPressed: () {
              count();
            },
          ),
```

**Langkah 4: Run**

Akhirnya, **run** atau tekan **F5** jika aplikasi belum running. Maka Anda akan melihat seperti gambar berikut, hasil angka 6 akan tampil setelah delay 9 detik.

![Output](docs/ss3.png)

>**Soal 4**
>- Jelaskan maksud kode langkah 1 dan 2 tersebut!
>- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "**W12: Soal 4**".

Jawab: Langkah 1 kode di atas adalah kode dart yang terdiri dari tiga fungsi asynchronous, yaitu ``returnOneAsync()``, ``returnTwoAsync()``, dan ``returnThreeAsync()``. Ketiga fungsi ini mengembalikan nilai int dan menggunakan ``Future.delayed()`` untuk menunda eksekusi selama 3 detik. Berikut adalah penjelasan masing-masing fungsi:

- returnOneAsync() Fungsi ini mengembalikan nilai 1 setelah 3 detik.
- returnTwoAsync() Fungsi ini mengembalikan nilai 2 setelah 3 detik.
- returnThreeAsync() Fungsi ini mengembalikan nilai 3 setelah 3 detik. Langkah 2 Kode di atas adalah sebuah fungsi asynchronous bernama ``count()`` yang digunakan untuk menghitung jumlah dari tiga fungsi asynchronous lainnya, yaitu ``returnOneAsync()``, ``returnTwoAsync()``, dan ``returnThreeAsync()``. Fungsi count() ini mengembalikan Future, yang berarti bahwa eksekusinya tidak akan memblokir kode lainnya.

![Output](docs/soal4.gif)

### **Praktikum 3: Menggunakan Completer di Future**

Menggunakan Future dengan ``then``, ``catchError``, ``async``, dan ``await`` mungkin sudah cukup untuk banyak kasus, tetapi ada alternatif melakukan operasi async di Dart dan Flutter yaitu dengan ``class Completer``.

**Completer** membuat object Future yang mana Anda dapat menyelesaikannya nanti (late) dengan return sebuah value atau error.

Setelah Anda menyelesaikan praktikum 2, Anda dapat melanjutkan praktikum 3 ini. Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Jawablah di laporan praktikum Anda pada setiap soal yang ada di beberapa langkah praktikum ini.

<p>

**Langkah 1: Buka main.dart**

Pastikan telah impor package async berikut.

```dart
import 'package:async/async.dart';
```

**Langkah 2: Tambahkan variabel dan method**

Tambahkan variabel late dan method di ``class _FuturePageState`` seperti ini.

```dart
late Completer completer;

Future getNumber() {
  completer = Completer<int>();
  calculate();
  return completer.future;
}

Future calculate() async {
  await Future.delayed(const Duration(seconds : 5));
  completer.complete(42);
}
```

**Langkah 3: Ganti isi kode onPressed()**

Tambahkan kode berikut pada fungsi ``onPressed()``. Kode sebelumnya bisa Anda *comment*.

```dart
getNumber().then((value) {
                setState(() {
                  result = value.toString();
                });
              });
```

**Langkah 4:**

Terakhir, **run** atau tekan **F5** untuk melihat hasilnya jika memang belum running. Bisa juga lakukan **hot restart** jika aplikasi sudah running. Maka hasilnya akan seperti gambar berikut ini. Setelah 5 detik, maka angka 42 akan tampil.

![Output](docs/ss4.png)

>**Soal 5**
>- Jelaskan maksud kode langkah 2 tersebut!
>- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "**W12: Soal 5**".

Jawab: kode pada langkah 2, kita menambahkan ``variabel completer`` dan method ``getNumber()`` dan ``calculate()`` di class _FuturePageState.

- ``Variabel completer`` adalah variabel late dari tipe Completer. Variabel ini digunakan untuk menyimpan hasil dari perhitungan angka 42.
- ``Method getNumber()`` mengembalikan nilai dari variabel completer. Method ini memiliki dua langkah:<p> 
 a. Inisialisasi variabel completer dengan nilai baru.<p> b. Memanggil method ``calculate()`` untuk menghitung angka 42.
- ``Method calculate()`` menggunakan ``Future.delayed()`` untuk menunggu 5 detik sebelum menyelesaikan perhitungan angka 42. Setelah 5 detik, method ini akan memanggil method ``completer.complete()`` untuk menyelesaikan perhitungan dan mengembalikan nilai 42 ke variabel completer

**Langkah 5: Ganti method calculate()**

Gantilah isi code method ``calculate()`` seperti kode berikut, atau Anda dapat membuat ``calculate2()``

```dart
calculate() async {
    try {
      await new Future.delayed(const Duration(seconds: 5));
      completer.complete(42);
    } catch (_) {
      completer.completeError({});
    }
  }
```

**Langkah 6: Pindah ke onPressed()**

Ganti menjadi kode seperti berikut.

```dart
getNumber().then((value) {
  setState(() {
    result = value.toString();
  });
}).catchError((e) {
  result = 'An error occurred';
});
```

>**Soal 6**
>- Jelaskan maksud perbedaan kode langkah 2 dengan langkah 5-6 tersebut!
>- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "**W12: Soal 6**".

Jawab: 
- Pada langkah 5, kita mengganti isi dari method ``calculate()``. Method ``calculate()`` sebelumnya menggunakan ``await Future.delayed(const Duration(seconds: 5));`` untuk menunggu 5 detik sebelum menyelesaikan perhitungan angka 42. Namun, method ini tidak menangani kesalahan yang mungkin terjadi saat menunggu 5 detik. Kode ini menggunakan try/catch untuk menangani kesalahan yang mungkin terjadi saat menunggu 5 detik. Jika tidak terjadi kesalahan, maka method ini akan memanggil method ``completer.complete()`` untuk menyelesaikan perhitungan dan mengembalikan nilai 42 ke variabel completer. Jika terjadi kesalahan, maka method ini akan memanggil method ``completer.completeError()`` untuk menyelesaikan perhitungan dan mengembalikan nilai {} ke variabel ``completer``.
- Pada langkah 6, kita mengganti kode di method ``onPressed()``. Method ``onPressed()`` sebelumnya menggunakan ``then()`` untuk menangani hasil dari method ``getNumber()``. Namun, method ini tidak menangani kesalahan yang mungkin terjadi saat memanggil method ``getNumber()``. Kode ini menggunakan ``then()`` dan ``catchError()`` untuk menangani hasil dari method ``getNumber()``. Jika tidak terjadi kesalahan, maka method ini akan memanggil method ``setState()`` untuk memperbarui state dari widget. Jika terjadi kesalahan, maka method ini akan memanggil method ``setState()`` untuk memperbarui state dari widget dan menampilkan pesan kesalahan.

![Output](docs/soal6.gif)
