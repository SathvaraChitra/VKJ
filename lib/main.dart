import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/screens/MPIN_Login_Show.dart';
import 'package:untitled/screens/homescreen.dart';
import 'package:untitled/screens/screens.dart';

import 'routes/get_routes.dart';
import 'screens/NewOrder.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VKJ',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MpinLoginShow(),
      getPages: AppPages.pages,
    );
  }
}

