import 'package:get/get.dart';

import 'package:aprilmart/app/modules/home/bindings/home_binding.dart';
import 'package:aprilmart/app/modules/home/views/home_view.dart';
import 'package:aprilmart/app/modules/transaksi/bindings/transaksi_binding.dart';
import 'package:aprilmart/app/modules/transaksi/views/transaksi_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.TRANSAKSI,
      page: () => TransaksiView(),
      binding: TransaksiBinding(),
    ),
  ];
}
