import 'package:get/instance_manager.dart';
import 'package:untitled/controller/sync_dataController.dart';

import '../controller/controller.dart';


class place_orderbinding extends Bindings{




  @override
  void dependencies() {
    Get.lazyPut<Place_orderController>(() => Place_orderController());
  }

}