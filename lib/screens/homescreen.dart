import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class HomeScreen extends GetView<HomeController> {
  static String pageId = "/homescreen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:  Text(controller.test.value),
      ),
      body: const Center(
        child: Text("Getx Demo"),
      ),
    );
  }
}
