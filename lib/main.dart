import 'package:flutter/material.dart';
import 'package:flutter_app3/pages/Data_siswa.dart';
import 'package:flutter_app3/pages/Data_sekolah.dart';
import 'package:flutter_app3/pages/Konsentrasi_keahlian.dart';
import 'package:flutter_app3/pages/Lat_column.dart';
import 'package:flutter_app3/pages/beranda.dart';
import 'package:flutter_app3/pages/biodata.dart';
import 'package:flutter_app3/pages/login.dart';
import 'package:flutter_app3/pages/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var routes = {
      "/": (context) => const LoginPage(),
      "/home": (context) => const LoginPage(),
      "/beranda": (context) => const Beranda(),
      "/biodata": (context) => const Biodata(),
      "/register": (context) => const Register(),
      "/lat_column": (context) => const HalKolom(),
      "/data_siswa": (context) => const DataSiswa(),
      "/data_sekolah": (context) => const DataSekolah(),
      "/konsentrasi_keahlian": (context) => const KonsentrasiKeahlian(),
    };
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: routes,
    );
  }
}
