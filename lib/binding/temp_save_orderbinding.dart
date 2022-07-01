import 'package:get/instance_manager.dart';
import 'package:untitled/controller/sync_dataController.dart';

import '../controller/controller.dart';


class temp_save_order extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<Temp_save_orderController>(() => Temp_save_orderController());
  }

}