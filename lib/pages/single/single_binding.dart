import 'package:get/get.dart';

import 'single_controller.dart';

class SingleBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SingleController>(SingleController());
  }
}
