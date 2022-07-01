import 'package:get/instance_manager.dart';

import '../controller/controller.dart';


class Order_historybinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<Order_historyController>(() =>Order_historyController());
  }

}