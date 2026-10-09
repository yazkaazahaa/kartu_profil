
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kartu Profil',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF4F6FA),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF315DA8),
        ),
      ),
      home: const KartuProfil(),
    );
  }
}

class KartuProfil extends StatelessWidget {
  const KartuProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, ukuran) {
            final layarLebar = ukuran.maxWidth > 600;

            return SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Container(
                  width: double.infinity,
                  constraints: const BoxConstraints(
                    maxWidth: 850,
                  ),
                  padding: EdgeInsets.all(layarLebar ? 32 : 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: const Color(0xFFE3E8F0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 18,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          'Kartu Profil',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF23395D),
                          ),
                        ),
                      ),

                      const SizedBox(height: 8),

                      const Center(
                        child: Text(
                          'Profil Mahasiswa',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                      ),

                      const SizedBox(height: 24),

                      const Divider(
                        color: Color(0xFFE3E8F0),
                      ),

                      const SizedBox(height: 24),

                      if (layarLebar)
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FotoProfil(),
                            SizedBox(width: 32),
                            Expanded(
                              child: InformasiProfil(),
                            ),
                          ],
                        )
                      else
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            FotoProfil(),
                            SizedBox(height: 28),
                            InformasiProfil(),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// FOTO PROFIL DAN BADGE

class FotoProfil extends StatelessWidget {
  const FotoProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xFF315DA8),
                width: 2,
              ),
            ),
            child: const CircleAvatar(
              radius: 72,
              backgroundColor: Color(0xFFE8EDF5),
              backgroundImage: AssetImage(
                'assets/foto_profil.jpeg',
              ),
            ),
          ),

          Positioned(
            right: -12,
            bottom: 5,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 11,
                vertical: 6,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFE2F6E9),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color(0xFFB5E4C5),
                ),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.circle,
                    size: 8,
                    color: Color(0xFF23864A),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Available',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF23864A),
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

// INFORMASI PROFIL

class InformasiProfil extends StatelessWidget {
  const InformasiProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Yazkaa Zahaa Dzakiyah',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color(0xFF23395D),
          ),
        ),

        const SizedBox(height: 8),

        const Text(
          'Mahasiswa Sistem Informasi',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF315DA8),
          ),
        ),

        const SizedBox(height: 5),

        const Text(
          'Semester 5 • Fakultas Saintek',
          style: TextStyle(
            fontSize: 14,
            color: Colors.black54,
          ),
        ),

        const Text(
          'UNIPDU Jombang',
          style: TextStyle(
            fontSize: 14,
            color: Colors.black54,
          ),
        ),

        const SizedBox(height: 20),

        const Text(
          'Tentang Saya',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Color(0xFF23395D),
          ),
        ),

        const SizedBox(height: 8),

        const Text(
          'Saya adalah mahasiswa Sistem Informasi yang memiliki '
          'minat dalam memasak, fotografi, menulis, dan desain grafis.',
          style: TextStyle(
            fontSize: 14,
            height: 1.6,
            color: Color(0xFF4B5563),
          ),
        ),

        const SizedBox(height: 24),

        const Text(
          'Kontak',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Color(0xFF23395D),
          ),
        ),

        const SizedBox(height: 12),

        // Tetap menggunakan Row sesuai instruksi tugas.
        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Kontak(
                ikon: Icons.email_outlined,
                judul: 'Email',
                isi: 'yazkaazahaa5@gmail.com',
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Kontak(
                ikon: Icons.phone_outlined,
                judul: 'Telepon',
                isi: '+62 877-6096-4435',
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Kontak(
                ikon: Icons.code,
                judul: 'GitHub',
                isi: 'yazkaazahaa',
              ),
            ),
          ],
        ),

        const SizedBox(height: 24),

        const Text(
          'Keahlian',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Color(0xFF23395D),
          ),
        ),

        const SizedBox(height: 10),

        // Wrap membuat Chip berpindah baris secara otomatis.
        const Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            Chip(
              avatar: Icon(
                Icons.restaurant,
                size: 17,
                color: Color(0xFF315DA8),
              ),
              label: Text('Memasak'),
              backgroundColor: Color(0xFFEAF0FC),
              side: BorderSide.none,
              visualDensity: VisualDensity.compact,
            ),
            Chip(
              avatar: Icon(
                Icons.camera_alt_outlined,
                size: 17,
                color: Color(0xFF315DA8),
              ),
              label: Text('Fotografi'),
              backgroundColor: Color(0xFFEAF0FC),
              side: BorderSide.none,
              visualDensity: VisualDensity.compact,
            ),
            Chip(
              avatar: Icon(
                Icons.edit_outlined,
                size: 17,
                color: Color(0xFF315DA8),
              ),
              label: Text('Menulis'),
              backgroundColor: Color(0xFFEAF0FC),
              side: BorderSide.none,
              visualDensity: VisualDensity.compact,
            ),
            Chip(
              avatar: Icon(
                Icons.palette_outlined,
                size: 17,
                color: Color(0xFF315DA8),
              ),
              label: Text('Desain Grafis'),
              backgroundColor: Color(0xFFEAF0FC),
              side: BorderSide.none,
              visualDensity: VisualDensity.compact,
            ),
          ],
        ),
      ],
    );
  }
}

// WIDGET KONTAK

class Kontak extends StatelessWidget {
  final IconData ikon;
  final String judul;
  final String isi;

  const Kontak({
    super.key,
    required this.ikon,
    required this.judul,
    required this.isi,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 42,
          height: 42,
          decoration: BoxDecoration(
            color: const Color(0xFFEAF0FC),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            ikon,
            size: 21,
            color: const Color(0xFF315DA8),
          ),
        ),

        const SizedBox(height: 8),

        Text(
          judul,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Color(0xFF23395D),
          ),
        ),

        const SizedBox(height: 5),

        Text(
          isi,
          textAlign: TextAlign.center,
          softWrap: true,
          style: const TextStyle(
            fontSize: 10,
            height: 1.4,
            color: Color(0xFF4B5563),
          ),
        ),
      ],
    );
  }
}
