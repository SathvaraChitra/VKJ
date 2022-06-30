import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:untitled/screens/NewOrder.dart';

import '../binding/binding.dart';
import '../screens/screens.dart';
import '../screens/MPIN_Login_Show.dart';
class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: HomeScreen.pageId,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: MpinLoginShow.pageId,
      page: () => MpinLoginShow(),
      binding: MpinLoginBinding(),
    ),
    GetPage(
      name: Dashboard.pageId,
      page: () => Dashboard(),
      binding: Dashboardbinding(),
    ),
    GetPage(
      name: NewOrder.pageId,
      page: () => NewOrder(),
      binding: NewOrderbinding(),
    ),
  ];
}
