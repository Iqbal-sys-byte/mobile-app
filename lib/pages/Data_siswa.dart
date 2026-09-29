import 'package:flutter/material.dart';
import 'package:flutter_app3/widgets/footer_back_button.dart';

class DataSiswa extends StatefulWidget {
  const DataSiswa({super.key});

  @override
  State<DataSiswa> createState() => _DataSiswaState();
}

class _DataSiswaState extends State<DataSiswa> {
  final TextEditingController _nisController = TextEditingController();
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _tempatLahirController = TextEditingController();
  final TextEditingController _tanggalLahirController = TextEditingController();
  final TextEditingController _telpController = TextEditingController();
  final TextEditingController _kelasController = TextEditingController();
  final TextEditingController _usiaController = TextEditingController();

  String _jenisKelamin = 'Laki-laki';
  String _konsentrasiKeahlian = 'RPL';

  final List<String> _jenisKelaminList = ['Laki-laki', 'Perempuan'];
  final List<String> _konsentrasiList = ['RPL', 'AKL', 'OTKP', 'BDP', 'MM'];

  @override
  void dispose() {
    _nisController.dispose();
    _namaController.dispose();
    _tempatLahirController.dispose();
    _tanggalLahirController.dispose();
    _telpController.dispose();
    _kelasController.dispose();
    _usiaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Siswa",
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
                      "FORM DATA SISWA",
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

                  // NIS
                  TextField(
                    controller: _nisController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide()),
                      labelText: "NIS",
                      hintText: "Masukan NIS",
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Nama
                  TextField(
                    controller: _namaController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide()),
                      labelText: "Nama",
                      hintText: "Masukan Nama Lengkap",
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Tempat Lahir
                  TextField(
                    controller: _tempatLahirController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide()),
                      labelText: "Tempat Lahir",
                      hintText: "Masukan Tempat Lahir",
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Tanggal Lahir
                  TextField(
                    controller: _tanggalLahirController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide()),
                      labelText: "Tanggal Lahir",
                      hintText: "Contoh: 01 Januari 2005",
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Jenis Kelamin
                  DropdownButtonFormField<String>(
                    value: _jenisKelamin,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide()),
                      labelText: "Jenis Kelamin",
                    ),
                    items: _jenisKelaminList.map((jenis) {
                      return DropdownMenuItem<String>(
                        value: jenis,
                        child: Text(jenis),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _jenisKelamin = value!;
                      });
                    },
                  ),
                  const SizedBox(height: 12),

                  // Telp
                  TextField(
                    controller: _telpController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide()),
                      labelText: "Telp",
                      hintText: "Masukan No. Telepon",
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Konsentrasi Keahlian
                  DropdownButtonFormField<String>(
                    value: _konsentrasiKeahlian,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide()),
                      labelText: "Konsentrasi Keahlian",
                    ),
                    items: _konsentrasiList.map((konsentrasi) {
                      return DropdownMenuItem<String>(
                        value: konsentrasi,
                        child: Text(konsentrasi),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _konsentrasiKeahlian = value!;
                      });
                    },
                  ),
                  const SizedBox(height: 12),

                  // Kelas
                  TextField(
                    controller: _kelasController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide()),
                      labelText: "Kelas",
                      hintText: "Masukan Kelas",
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Usia
                  TextField(
                    controller: _usiaController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide()),
                      labelText: "Usia",
                      hintText: "Masukan Usia",
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
