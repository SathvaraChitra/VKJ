import 'package:get/instance_manager.dart';

import '../controller/controller.dart';


class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }

}