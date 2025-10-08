import 'package:flutter/material.dart';
import 'package:flutter_plugin_pubdev/red_text_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Home Page',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // 2. Membuat variabel untuk menyimpan state (angka yang akan bertambah)
  int _counter = 0;

  // 3. Membuat fungsi untuk mengubah state
  void _incrementCounter() {
    // setState() memberitahu Flutter untuk membangun ulang UI dengan nilai _counter yang baru
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold adalah kerangka utama untuk sebuah halaman.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.yellowAccent,
              width: 50,
              child: const RedTextWidget(
                text: 'You have pushed the button this many times:',
              ),
            ),
            Container(
              color: Colors.greenAccent,
              width: 100,
              child: const Text(
                'You have pushed the button this many times:',
              ),
            ),
            // 4. Menampilkan variabel _counter, bukan lagi angka '0'
            Text(
              '$_counter', // Menggunakan nilai dari variabel _counter
              // Mengambil style text dari tema default agar konsisten
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      // 5. Memperbarui FloatingActionButton
      floatingActionButton: FloatingActionButton(
        // Memanggil fungsi yang sudah kita buat saat tombol ditekan
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        // Mengatur warna tombol secara eksplisit menjadi biru
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}