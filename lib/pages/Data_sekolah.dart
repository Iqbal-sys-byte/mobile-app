import 'package:flutter/material.dart';
import 'package:flutter_app3/widgets/footer_back_button.dart';

class DataSekolah extends StatefulWidget {
  const DataSekolah({super.key});

  @override
  State<DataSekolah> createState() => _DataSekolahState();
}

class _DataSekolahState extends State<DataSekolah> {
  final TextEditingController _npsnController = TextEditingController();
  final TextEditingController _namaSekolahController = TextEditingController();
  final TextEditingController _alamatController = TextEditingController();
  final TextEditingController _telpController = TextEditingController();

  @override
  void dispose() {
    _npsnController.dispose();
    _namaSekolahController.dispose();
    _alamatController.dispose();
    _telpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Sekolah",
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
                      "FORM DATA SEKOLAH",
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

                  // NPSN
                  TextField(
                    controller: _npsnController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide()),
                      labelText: "NPSN",
                      hintText: "Masukan NPSN",
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Nama Sekolah
                  TextField(
                    controller: _namaSekolahController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide()),
                      labelText: "Nama Sekolah",
                      hintText: "Masukan Nama Sekolah",
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Alamat
                  TextField(
                    controller: _alamatController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide()),
                      labelText: "Alamat",
                      hintText: "Masukan Alamat Sekolah",
                    ),
                  ),
                  const SizedBox(height: 12),

                  // No Telp
                  TextField(
                    controller: _telpController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide()),
                      labelText: "No Telp",
                      hintText: "Masukan No. Telepon",
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