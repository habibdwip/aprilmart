import 'package:get/get.dart';

import '../controllers/finansial_controller.dart';

class FinansialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FinansialController>(
      () => FinansialController(),
    );
  }
}
