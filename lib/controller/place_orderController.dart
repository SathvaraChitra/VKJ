import 'package:get/get_rx/src/rx_types/rx_types.dart';

import 'controller.dart';

class Place_orderController extends BaseController {

  RxString dropdownvalue = 'Select'.obs;
  bool values = false;
  final items =  ['Select','India','Pakisthan','Japan','Norve','America',];
  //String? values;
  bool valuefirst = false;

  @override
  void errorHandler() {

  }

}
