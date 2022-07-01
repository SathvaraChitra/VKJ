import 'package:get/instance_manager.dart';

import '../controller/controller.dart';


class sync_order extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<Sync_order_controller>(() => Sync_order_controller());
  }

}