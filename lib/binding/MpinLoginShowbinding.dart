import 'package:get/instance_manager.dart';

import '../controller/controller.dart';


class MpinLoginBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<MpinLoginShowController>(() =>MpinLoginShowController ());
  }

}