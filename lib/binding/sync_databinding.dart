import 'package:get/instance_manager.dart';
import 'package:untitled/controller/sync_dataController.dart';

import '../controller/controller.dart';


class sync_data extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<Sync_dataController>(() => Sync_dataController());
  }

}