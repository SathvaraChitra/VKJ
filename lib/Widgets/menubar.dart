import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/device/device_utils.dart';
import 'package:untitled/screens/NewOrder.dart';
import 'package:untitled/screens/dashboard.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  // late Repository _repository;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.grey),
        elevation: 2,
        backgroundColor: const Color(0xffffffff),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Color(0xff9e9e9e),
            )),
      ),
      body: SizedBox(
        width: DeviceUtils.getScaledWidth(context, 1.00),
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const SizedBox(
                height: 1,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: null,
                ),
              ),
              const SizedBox(height: 10,),
              ListTile(
                visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                ),
                title: const Text(
                  'Dashboard',
                  style: TextStyle(fontSize: 16, color: Color(0xff9e9e9e)),
                ),
                onTap: () => { Get.toNamed(Dashboard.pageId)},
              ),
              const Divider(
                color: Colors.black12,
                //color of divider
                height: 20,
                //height spacing of divider
                thickness: 1,
                //thickness of divier line
                indent: 20,
                //spacing at the start of divider
                endIndent: 20, //spacing at the end of divider
              ),
              ListTile(
                visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                ),
                title: const Text(
                  'Cart',
                  style: TextStyle(fontSize: 16, color: Color(0xff9e9e9e)),
                ),
                onTap: () => { Get.toNamed(NewOrder.pageId)},
              ),
              const Divider(
                color: Colors.black12,
                //color of divider
                height: 20,
                //height spacing of divider
                thickness: 1,
                //thickness of divier line
                indent: 20,
                //spacing at the start of divider
                endIndent: 20, //spacing at the end of divider
              ),
              ListTile(
                visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                ),
                title: const Text(
                  'Order History',
                  style: TextStyle(fontSize: 16, color: Color(0xff9e9e9e)),
                ),
                onTap: () => {Navigator.of(context).pop()},
              ),
              const Divider(
                color: Colors.black12,
                //color of divider
                height: 20,
                //height spacing of divider
                thickness: 1,
                //thickness of divier line
                indent: 20,
                //spacing at the start of divider
                endIndent: 20, //spacing at the end of divider
              ),
              ListTile(
                visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                ),
                title: const Text(
                  'Unsync Orders',
                  style: TextStyle(fontSize: 16, color: Color(0xff9e9e9e)),
                ),
                onTap: () => {Navigator.of(context).pop()},
              ),
              const Divider(
                color: Colors.black12,
                //color of divider
                height: 20,
                //height spacing of divider
                thickness: 1,
                //thickness of divier line
                indent: 20,
                //spacing at the start of divider
                endIndent: 20, //spacing at the end of divider
              ),
              ListTile(
                visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                ),
                title: const Text(
                  'Temp Saved Orders',
                  style: TextStyle(fontSize: 16, color: Color(0xff9e9e9e)),
                ),
                onTap: () => {Navigator.of(context).pop()},
              ),
              const Divider(
                color: Colors.black12,
                //color of divider
                height: 20,
                //height spacing of divider
                thickness: 1,
                //thickness of divier line
                indent: 20,
                //spacing at the start of divider
                endIndent: 20, //spacing at the end of divider
              ),
              ListTile(
                visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                ),
                title: const Text(
                  'Add Retailer',
                  style: TextStyle(fontSize: 16, color: Color(0xff9e9e9e)),
                ),
                onTap: () => {Navigator.of(context).pop()},
              ),
              const Divider(
                color: Colors.black12,
                //color of divider
                height: 20,
                //height spacing of divider
                thickness: 1,
                //thickness of divier line
                indent: 20,
                //spacing at the start of divider
                endIndent: 20, //spacing at the end of divider
              ),
              ListTile(
                visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                ),
                title: const Text(
                  'Sync Data',
                  style: TextStyle(fontSize: 16, color: Color(0xff9e9e9e)),
                ),
                onTap: () => {Navigator.of(context).pop()},
              ),
              const Divider(
                color: Colors.black12,
                //color of divider
                height: 20,
                //height spacing of divider
                thickness: 1,
                //thickness of divier line
                indent: 20,
                //spacing at the start of divider
                endIndent: 20, //spacing at the end of divider
              ),
              ListTile(
                visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                title: const Text(
                  'Logout',
                  style: TextStyle(fontSize: 16, color: Colors.red),
                ),
                onTap: () => {Navigator.of(context).pop()},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
