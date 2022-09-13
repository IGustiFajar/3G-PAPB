import 'package:flutter/material.dart';
import './pages/page_utama.dart';
import 'package:get/get.dart';
import './routes/page_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: PageUtama(),
      getPages: Halaman.pages,
    );
  }
}
