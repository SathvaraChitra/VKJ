import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/screens/homescreen.dart';
import 'package:untitled/screens/place_order.dart';
import 'package:untitled/screens/screens.dart';
import 'package:untitled/screens/sync_data.dart';
import 'package:untitled/screens/sync_order.dart';
import 'package:untitled/screens/temp_save_order.dart';

import 'routes/get_routes.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Place_order(),
      getPages: AppPages.pages,
    );
  }
}

