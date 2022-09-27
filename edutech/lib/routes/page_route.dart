import 'package:edutech/pages/loginPage.dart';
import 'package:edutech/routes/routes_name.dart';

import 'package:get/get.dart';
import '../pages/loginPage.dart';
import '../pages/page_dua.dart';
import '../pages/page_tiga.dart';

class Halaman {
  static final pages = [
    GetPage(
      name: RouteName.page_1,
      page: () => PageUtama(),
    ),
    GetPage(
      name: RouteName.page_2,
      page: () => PageDua(),
    ),
    GetPage(
      name: RouteName.page_3,
      page: () => PageTiga(),
    ),
  ];
}
