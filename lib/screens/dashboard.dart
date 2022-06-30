import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/Widgets/menubar.dart';
import 'package:untitled/controller/controller.dart';
import 'package:untitled/device/device_utils.dart';

class Dashboard extends GetView<DashboardController> {
  const Dashboard({Key? key}) : super(key: key);
  static String pageId = "/dashboard";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        elevation: 2,
        backgroundColor: const Color(0xffffffff),
        // leading: GestureDetector(
        //   onTap: () {
        //     MenuDrawer();
        //   },
        //   child: const Icon(
        //     Icons.menu, color: Color(0xff9e9e9e),
        //     //color: Colors.black,
        //     size: 30,
        //   ),
        // ),
        title: const Text(
          'Dashboard',
          style: TextStyle(fontSize: 20, color: Color(0xff9e9e9e)),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_outlined, color: Color(0xff9e9e9e),
              //color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                  width: DeviceUtils.getScaledWidth(context, 0.46),
                  height: DeviceUtils.getScaledHeight(context, 0.27),
                  child: Card(
                    shadowColor: Colors.amber.shade50,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff444444),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          width: DeviceUtils.getScaledWidth(context, 0.46),
                          height: DeviceUtils.getScaledHeight(context, 0.17),
                          alignment: Alignment.center,
                          child: const Text(
                            '1008',
                            style: TextStyle(
                                fontSize: 40,
                                color: Color(0xffffce00),
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        const Text(
                          'ToDay\'s Orders',
                          style: TextStyle(
                              fontSize: 26,
                              color: Color(0xff444444),
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                  width: DeviceUtils.getScaledWidth(context, 0.46),
                  height: DeviceUtils.getScaledHeight(context, 0.27),
                  child: Card(
                    shadowColor: Colors.amber.shade50,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff444444),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          width: DeviceUtils.getScaledWidth(context, 0.46),
                          height: DeviceUtils.getScaledHeight(context, 0.17),
                          alignment: Alignment.center,
                          child: const Text(
                            '2456',
                            style: TextStyle(
                                fontSize: 40,
                                color: Color(0xffffce00),
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        const Text(
                          'Total Orders',
                          style: TextStyle(
                              fontSize: 26,
                              color: Color(0xff444444),
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                  width: DeviceUtils.getScaledWidth(context, 0.46),
                  height: DeviceUtils.getScaledHeight(context, 0.27),
                  child: Card(
                    shadowColor: Colors.amber.shade50,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff444444),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          width: DeviceUtils.getScaledWidth(context, 0.46),
                          height: DeviceUtils.getScaledHeight(context, 0.17),
                          alignment: Alignment.center,
                          child: const Text(
                            '465',
                            style: TextStyle(
                                fontSize: 40,
                                color: Color(0xffffce00),
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        const Text(
                          'Retailers',
                          style: TextStyle(
                              fontSize: 26,
                              color: Color(0xff444444),
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                  width: DeviceUtils.getScaledWidth(context, 0.46),
                  height: DeviceUtils.getScaledHeight(context, 0.27),
                  child: Card(
                    shadowColor: Colors.amber.shade50,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff444444),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          width: DeviceUtils.getScaledWidth(context, 0.46),
                          height: DeviceUtils.getScaledHeight(context, 0.17),
                          alignment: Alignment.center,
                          child: const Text(
                            '5678',
                            style: TextStyle(
                                fontSize: 40,
                                color: Color(0xffffce00),
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        const Text(
                          'Products',
                          style: TextStyle(
                              fontSize: 26,
                              color: Color(0xff444444),
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
