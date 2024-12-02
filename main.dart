import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Chinese food')),
        body: const PavlovaScreen(),
      ),
    );
  }
}

class PavlovaScreen extends StatelessWidget {
  const PavlovaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Mie China',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Mie Cina pada umumnya dibuat dari tepung terigu, tepung beras, atau pati kacang hijau , '
                  'dengan mie gandum lebih umum diproduksi dan dikonsumsi dengan teknologi cetakan mie kayu kuno di Cina utara dan mie beras lebih umum di Cina selatan.',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.green[500]),
                    Icon(Icons.star, color: Colors.green[500]),
                    Icon(Icons.star, color: Colors.green[500]),
                    Icon(Icons.star, color: Colors.green[500]),
                    const Icon(Icons.star_half, color: Colors.green),
                    const SizedBox(width: 8),
                    const Text('9.000 Reviews'),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildIconInfo(Icons.timer, 'PREP:', '25 min'),
                    _buildIconInfo(Icons.schedule, 'COOK:', '1 hr'),
                    _buildIconInfo(Icons.restaurant, 'FEEDS:', '4-6'),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Image.network(
            'https://image.made-in-china.com/2f0j00lNGhUFuqCsri/Chinese-Egg-Noodles-Traditional-Noodle-800g-Good-Taste-Egg-Dried-Noodles-Beijing-Flavor-Egg-Dried-Noodles.webp', // Ganti dengan URL gambar pavlova Anda
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Widget _buildIconInfo(IconData icon, String title, String subtitle) {
    return Column(
      children: [
        Icon(icon, color: Colors.green[500]),
        const SizedBox(height: 4),
        Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(subtitle),
      ],
    );
  }
}
