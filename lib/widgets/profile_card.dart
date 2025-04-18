import 'package:flutter/material.dart';
import '../models/student.dart';

class ProfileCard extends StatelessWidget {
  final Student student;

  const ProfileCard({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: const Color.fromARGB(
        255,
        255,
        255,
        255,
      ), // Mengatur warna latar belakang menjadi abu-abu
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipOval(
              child: Image.asset(
                student.photoUrl,
                width: 135, // Atur lebar sesuai kebutuhan
                height: 135, // Atur tinggi sesuai kebutuhan
                fit: BoxFit.cover, // Mengatur agar gambar tidak terdistorsi
              ),
            ),
            const SizedBox(height: 16),
            Text(
              student.name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'NPM: ${student.npm}',
              style: const TextStyle(
                fontFamily: 'Times New Roman',
              ), // Mengubah font menjadi Times New Roman
            ),
            Text(
              'Jurusan: ${student.jurusan}',
              style: const TextStyle(
                fontFamily: 'Times New Roman',
              ), // Mengubah font menjadi Times New Roman
            ),
            Text(
              'Fakultas: ${student.fakultas}',
              style: const TextStyle(
                fontFamily: 'Times New Roman',
              ), // Mengubah font menjadi Times New Roman
            ),
            Text(
              'Universitas: ${student.universitas}',
              style: const TextStyle(
                fontFamily: 'Times New Roman',
              ), // Mengubah font menjadi Times New Roman
            ),
          ],
        ),
      ),
    );
  }
}
