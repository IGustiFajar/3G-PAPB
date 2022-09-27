import 'package:edutech/providers/auth.dart';
import 'package:flutter/material.dart';
import 'pages/loginPage.dart';
import 'package:get/get.dart';
import './routes/page_route.dart';
import './pages/launcher.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Auths(),
        ),
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Edutech',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LauncherPage(),
      ),
    );
  }
}
