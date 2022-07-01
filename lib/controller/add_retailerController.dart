import 'package:get/get_rx/src/rx_types/rx_types.dart';

import 'controller.dart';

class Add_retailerController extends BaseController {

  RxString dropdownvalue = 'Select'.obs;
  final items =  ['Select','India','Pakisthan','Japan','Norve','America',];
  String? value;

  final items1 =  ['Select','India','Pakisthan','Japan','Norve','America',];

  @override
  void errorHandler() {

  }

}
