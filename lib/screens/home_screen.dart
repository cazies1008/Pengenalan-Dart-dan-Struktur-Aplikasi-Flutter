import 'package:flutter/material.dart';
import '../models/student.dart';
import '../widgets/profile_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Student student = Student(
    name: 'Alditho Brahma Romean Maiseka',
    npm: '23621097',
    jurusan: 'Sistem Informasi',
    fakultas: 'Ilmu Komputer',
    universitas: 'Universitas Yapis Papua',
    photoUrl: 'assets/cazies.jpg',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Biodata Mahasiswa',
          style: TextStyle(
            color: Colors.white, // Mengatur warna teks menjadi putih
            fontWeight: FontWeight.bold, // Mengatur teks menjadi tebal
            fontSize: 24, // Mengatur ukuran font menjadi lebih besar
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 233, 233, 72),
      ),
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Centering the ProfileCard
          Center(child: ProfileCard(student: student)),
        ],
      ),
    );
  }
}
