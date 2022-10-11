import 'package:edutech/pages/loginPage.dart';
import 'package:edutech/routes/routes_name.dart';

import 'package:get/get.dart';
import '../pages/loginPage.dart';
import '../pages/BerandaPage.dart';
import '../pages/SignUpPage.dart';

class Halaman {
  static final pages = [
    GetPage(
      name: RouteName.page_1,
      page: () => LoginPage(),
    ),
    GetPage(
      name: RouteName.page_2,
      page: () => BerandaPage(),
    ),
    GetPage(
      name: RouteName.page_3,
      page: () => SignUpPage(),
    ),
  ];
}
