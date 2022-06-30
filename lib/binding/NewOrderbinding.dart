import 'package:get/instance_manager.dart';

import '../controller/controller.dart';


class NewOrderbinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<NewOrderController>(() => NewOrderController());
  }

}