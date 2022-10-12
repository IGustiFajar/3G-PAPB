import 'package:edutech/pages/BerandaPage.dart';
import 'package:edutech/pages/detailKelasPage.dart';
import 'package:edutech/pages/profilePage.dart';
import 'package:edutech/pages/kelasPage.dart';
import 'package:edutech/pages/SignUpPage.dart';
import 'package:edutech/pages/loginPage.dart';
import 'package:edutech/pages/alert_dialog.dart';
import 'package:edutech/pages/sertifikatPage.dart';
import 'package:flutter/material.dart';
import './pages/launcher.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'providers/auth.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return ScreenUtilInit(
    //   designSize: const Size(360, 690),
    //   minTextAdapt: true,
    //   splitScreenMode: true,
    //   builder: (context , child) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Edutech',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      defaultTransition: Transition.fade,
      // initialRoute: '/',
      getPages: [
        GetPage(
          name: '/beranda',
          page: () => const BerandaPage(),
        ),
        GetPage(
          name: '/kelas',
          page: () => const kelasPage(),
        ),
        GetPage(
          name: '/profil',
          page: () => ProfilePage(),
        ),
        GetPage(
          name: '/signup',
          page: () => const SignUpPage(),
        ),
        GetPage(
          name: '/login',
          page: () => const LoginPage(),
        ),
        GetPage(
          name: '/kelas-detail',
          page: () => const KelasDetail(),
        ),
        GetPage(
          name: '/alert',
          page: () => const AlertDialog(),
        ),
        GetPage(
          name: '/sertifikat',
          page: () => const sertifikatPage(),
        ),
      ],
      home: LauncherPage(),
    );
  }
}
