import 'package:flutter/material.dart';
import 'package:flutter_app3/widgets/footer_back_button.dart';

class KonsentrasiKeahlian extends StatefulWidget {
  const KonsentrasiKeahlian({super.key});

  @override
  State<KonsentrasiKeahlian> createState() => _KonsentrasiKeahlianState();
}

class _KonsentrasiKeahlianState extends State<KonsentrasiKeahlian> {
  final TextEditingController _idKkController = TextEditingController();
  final TextEditingController _namaKkController = TextEditingController();

  @override
  void dispose() {
    _idKkController.dispose();
    _namaKkController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Konsentrasi Keahlian",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 247, 137, 3),
        shadowColor: Colors.black,
        elevation: 10,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      "FORM KONSENTRASI KEAHLIAN",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: Image.asset('images/logo.png', height: 80),
                  ),
                  const SizedBox(height: 20),

                  // ID KK
                  TextField(
                    controller: _idKkController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide()),
                      labelText: "ID KK",
                      hintText: "Masukan ID KK",
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Nama KK
                  TextField(
                    controller: _namaKkController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide()),
                      labelText: "Nama KK",
                      hintText: "Masukan Nama KK",
                    ),
                  ),
                  const SizedBox(height: 30),

                  // Tombol Selesai
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            fixedSize: const Size(150, 45)),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Selesai",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
          const FooterBackButton(parentRoute: "/beranda"),
        ],
      ),
    );
  }
}
