import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:untitled/controller/sync_dataController.dart';
import 'package:untitled/screens/temp_save_order.dart';

class Sync_data extends GetView<Sync_dataController> {
  static String pageId = "/Sync_order";

  const Sync_data({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: const Color(0xffffffff),
        leading:const Icon(
          Icons.arrow_back, color: Colors.grey,size: 28,),
        title: const Text("Sync Data", style:TextStyle(color: Colors.grey),),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.notifications_none_outlined, color: Colors.grey,size: 28,),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                  height: 50,
                  width: double.infinity,
                  child:ElevatedButton(
                    child: Text("Orders Sync", style: TextStyle(color: Colors.yellowAccent, fontSize: 18),),
                    onPressed: () => print("it's pressed"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black54,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  )
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                  height: MediaQuery.of(context).size.height * .06,
                  width: double.infinity,
                  child:ElevatedButton(
                    child: Text("Retailer Syncs", style: TextStyle(color: Colors.yellowAccent, fontSize: 18),),
                    onPressed: () {
                      Get.to(Temp_save_order());
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black54,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  )
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                height: 40,
                width: double.infinity,
                child:OutlinedButton(
                    onPressed: () {},
                    child: Text('Sync from Database ',style: TextStyle(color: Colors.black, fontSize: 18),),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(width: 1.0, color: Colors.black),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    )
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                  height: 50,
                  width: double.infinity,
                  child:ElevatedButton(
                    child: Text("Sync All", style: TextStyle(color: Colors.black, fontSize: 18),),
                    onPressed: () => print("it's pressed"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.yellow,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
