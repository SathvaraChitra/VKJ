import 'package:get/get_navigation/src/routes/get_route.dart';

import '../binding/binding.dart';
import '../screens/screens.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: HomeScreen.pageId,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}
