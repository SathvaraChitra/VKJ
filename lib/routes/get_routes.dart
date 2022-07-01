import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:untitled/binding/sync_databinding.dart';
import 'package:untitled/screens/sync_data.dart';
import 'package:untitled/screens/temp_save_order.dart';

import '../binding/binding.dart';
import '../binding/temp_save_orderbinding.dart';
import '../screens/screens.dart';


class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: HomeScreen.pageId,
      page: () => Order_history(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: HomeScreen.pageId,
      page: () => Order_history(),
      binding: Order_historybinding(),
    ),
    GetPage(
      name: HomeScreen.pageId,
      page: () => Add_retailer(),
      binding: Add_retailerbinding(),
    ),
    GetPage(
      name: HomeScreen.pageId,
      page: () => Sync_data(),
      binding: sync_data(),
    ),

    GetPage(
      name: HomeScreen.pageId,
      page: () => Temp_save_order(),
      binding:temp_save_order(),
    ),

    GetPage(
      name: HomeScreen.pageId,
      page: () => Add_retailer(),
      binding:Add_retailerbinding(),
    ),
    GetPage(
      name: HomeScreen.pageId,
      page: () => Place_order(),
      binding:place_orderbinding(),
    ),





  ];
}
