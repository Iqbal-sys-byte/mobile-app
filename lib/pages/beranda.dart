import 'package:flutter/material.dart';
import 'package:flutter_app3/widgets/footer_back_button.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    final cards = [
      _MenuCard(
        title: "Data Siswa",
        icon: Icons.people,
        color: Colors.blue,
        route: "/data_siswa",
      ),
      _MenuCard(
        title: "Data Sekolah",
        icon: Icons.school,
        color: Colors.purple,
        route: "/data_sekolah",
      ),
      _MenuCard(
        title: "Konsentrasi Keahlian",
        icon: Icons.work,
        color: Colors.teal,
        route: "/konsentrasi_keahlian",
      ),
      _MenuCard(
        title: "Biodata",
        icon: Icons.person,
        color: Colors.orange,
        route: "/biodata",
      ),
    ];

    return Scaffold(
        appBar: AppBar(
          title: const Text("halaman Beranda"),
          centerTitle: true,
          backgroundColor: Colors.orange,
          titleTextStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          shadowColor: Colors.black,
          elevation: 10,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              icon: const Icon(Icons.exit_to_app),
              onPressed: () {
                Navigator.pushNamed(context, "/home");
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1.1,
                  children: cards,
                ),
              ),
            ),
            const FooterBackButton(parentRoute: "/home"),
          ],
        ));
  }
}

class _MenuCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final String route;

  const _MenuCard({
    required this.title,
    required this.icon,
    required this.color,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, route),
      borderRadius: BorderRadius.circular(16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.3),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
          border: Border.all(color: color.withOpacity(0.3), width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: color.withOpacity(0.15),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, size: 32, color: color),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
