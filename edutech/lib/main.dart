import 'package:edutech/pages/BerandaPage.dart';
import 'package:edutech/pages/NotificationPage.dart';
import 'package:edutech/pages/lihatMateriPage.dart';
import 'package:edutech/pages/enrolKelas.dart';
import 'package:edutech/pages/detailMateri.dart';
import 'package:edutech/pages/lupapassword.dart';
import 'package:edutech/pages/materiPage.dart';
import 'package:edutech/pages/editprofilePage.dart';
import 'package:edutech/pages/profilePage.dart';
import 'package:edutech/pages/kelasPage.dart';
import 'package:edutech/pages/SignUpPage.dart';
import 'package:edutech/pages/loginPage.dart';
import 'package:edutech/pages/lihatMateriPage.dart';
import 'package:edutech/pages/detailKelasPage.dart';
import 'package:edutech/pages/sertifikatPage.dart';
import 'package:edutech/pages/panduanPage.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import './pages/launcher.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
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
        GetPage(
          name: '/materi',
          page: () => const MateriPage(),
        ),
        GetPage(
          name: '/notification',
          page: () => const NotificationPage(),
        ),
        GetPage(
          name: '/enrol',
          page: () => const EnrolKelas(),
        ),
        GetPage(
          name: '/lupapassword',
          page: () => const LupaPassword(),
        ),
        GetPage(
          name: '/detailmateri',
          page: () => const DetailMateri(),
        ),
        GetPage(
          name: '/editprofile',
          page: () => const EditProfilePage(),
        ),
        GetPage(
          name: '/panduan',
          page: () => const PanduanPage(),
        ),
        GetPage(
          name: '/lihatmaterienrol',
          page: () => const LihatMateriPage(),
        ),
      ],
      home: LauncherPage(),
    );
  }
}
