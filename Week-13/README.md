### Week 13

### Lanjutan State Management dengan Streams

Ahmad Bima Tristan Ibrahim

2141720077

### Praktikum 1: Dart Streams


>**Soal 1**
>- Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
>- Gantilah warna tema aplikasi sesuai kesukaan Anda.
>- Lakukan commit hasil jawaban Soal 1 dengan pesan "W13: Jawaban Soal 1"

Jawab: 
```dart
title: 'Stream Bima',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const StreamHomePage(),
```

>**Soal 2**
>- Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors tersebut.
>- Lakukan commit hasil jawaban Soal 2 dengan pesan "W13: Jawaban Soal 2"

Jawab:
```dart
class ColorStram {
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    Colors.blueGrey,
    Colors.lime,
    Colors.deepPurple,
    Colors.red,
    Colors.lightGreen,
  ];
}
```