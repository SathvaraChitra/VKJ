import 'package:get/instance_manager.dart';
import 'package:untitled/screens/screens.dart';

import '../controller/controller.dart';


class Add_retailerbinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<Add_retailer>(() => Add_retailer());
  }

}