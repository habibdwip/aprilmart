import 'package:get/get.dart';

import 'package:aprilmart/app/modules/transaksi/controllers/quantity_controller.dart';

import '../controllers/transaksi_controller.dart';

class TransaksiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuantityController>(
      () => QuantityController(),
    );
    Get.lazyPut<TransaksiController>(
      () => TransaksiController(),
    );
  }
}
