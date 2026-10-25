import 'package:flutter/material.dart';

void main() {
  runApp(const MY_KTM());
}

class MY_KTM extends StatelessWidget {
  //menggunakan Stateless yang dimana tampilan statis
  const MY_KTM({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KTM Digital',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'serif',
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF00A3E0)),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // disini aku membuat variabel yang bernilai string agar mudah saat mengisi KTM
  final String nama = 'Nabil Riza Putra Poerwanto';
  final String nim = '2513411009';
  final String prodi = 'Teknik Informatika';
  final String tahunMasuk = '2025';

  @override
  Widget build(BuildContext context) {
    const biru = Color(0xFF00A3E0);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: double.infinity, // lebarnya selayar
            height: 180,
            decoration: const BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
            ),
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  'Hai, Nabil',
                  style: TextStyle(fontSize: 32, fontFamily: 'serif'),
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 300,
                    padding: const EdgeInsets.all(8),
                    color: const Color(0xFFE8DC00),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          decoration: BoxDecoration(
                            color: const Color(0xFFE8B000),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text(
                            'UNIVERSITAS BHAYANGKARA \n SURABAYA',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontFamily: 'serif'),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'KARTU TANDA MAHASISWA',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text('Nama: $nama'),
                              Text('NIM: $nim'),
                              Text('Program Studi: $prodi'),
                              Text('Tahun Masuk: $tahunMasuk'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
