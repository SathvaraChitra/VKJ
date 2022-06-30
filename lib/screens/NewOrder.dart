import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/controller.dart';
import 'package:untitled/device/device_utils.dart';

class NewOrder extends GetView<NewOrderController> {
  NewOrder({Key? key}) : super(key: key);
  static String pageId = "/neworder";

  final controllerr = Get.put(NewOrderController());

  Product_List(context) => Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            width: DeviceUtils.getScaledWidth(context, 1.0),
            height: DeviceUtils.getScaledHeight(context, 0.07),
            color: Colors.transparent,
            child: Row(
              children: [
                const SizedBox(
                  width: 13,
                ),
                const Text(
                  'FNBL71001X10',
                  style: TextStyle(
                      fontSize: 12.0,
                      color: Color(0xff9e9e9e),
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  '22',
                  style: TextStyle(
                      fontSize: 12.0,
                      color: Color(0xff9e9e9e),
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 46,
                ),
                const Text(
                  '2.410',
                  style: TextStyle(
                      fontSize: 12.0,
                      color: Color(0xff9e9e9e),
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 40,
                ),
                const Text(
                  '2.180',
                  style: TextStyle(
                      fontSize: 12.0,
                      color: Color(0xff9e9e9e),
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 23,
                ),
                SizedBox(
                  width: DeviceUtils.getScaledWidth(context, 0.10),
                  height: DeviceUtils.getScaledHeight(context, 0.03),
                  child: TextField(
                    controller: controllerr.piecesController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.transparent,
                      hintText: '2',
                      hintStyle: const TextStyle(
                          fontSize: 16.0, color: Color(0xff9e9e9e)),
                      contentPadding: const EdgeInsets.only(
                        left: 19,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7)),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Ink(
                  height: 33,
                  width: 33,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff9e9e9e), width: 1.0),
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(500.0),
                    onTap: () {},
                    child: const Icon(
                      Icons.delete_outline, color: Color(0xff9e9e9e), size: 25,
                      //size: 50,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.message_outlined,
                    color: Color(0xff9e9e9e),
                    size: 28,
                  ),
                ),
              ],
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xffffffff)),
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
        title: const Text(
          'New Order',
          style: TextStyle(fontSize: 20, color: Color(0xff9e9e9e)),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.qr_code_scanner_outlined, color: Color(0xff9e9e9e),
              //color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 30),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: DeviceUtils.getScaledWidth(context, 0.70),
                      height: DeviceUtils.getScaledHeight(context, 0.05),
                      child: TextField(
                        controller: controllerr.itemController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xffE5E5E5),
                          hintText: 'Product Number',
                          hintStyle: const TextStyle(
                              fontSize: 16.0, color: Color(0xff9e9e9e)),
                          contentPadding: const EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: DeviceUtils.getScaledWidth(context, 0.20),
                      height: DeviceUtils.getScaledHeight(context, 0.05),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xffffce00)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ))),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Add',
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: DeviceUtils.getScaledWidth(context, 1.0),
            height: DeviceUtils.getScaledHeight(context, 0.07),
            color: const Color(0xff444444),
            child: Wrap(
              spacing: 20,
              children: const [
                SizedBox(
                  width: 1,
                ),
                Text(
                  'Design No.',
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xffffce00),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'Karat',
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xffffce00),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'Gross Wt',
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xffffce00),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'Net Wt',
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xffffce00),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'Pieces',
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xffffce00),
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 8,
              itemBuilder: (BuildContext context, int index) => Column(
                    children: [
                      Product_List(context),
                    ],
                  )),
          Container(
            width: DeviceUtils.getScaledWidth(context, 1.0),
            height: DeviceUtils.getScaledHeight(context, 0.135),
            color: const Color(0xffF2F2F2),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'No of Design: 8',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Color(0xff9e9e9e),
                                fontWeight: FontWeight.w500),
                          ),
                         SizedBox(
                            height: 4,
                          ),
                         Text(
                            'No of Pieces: 16',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Color(0xff9e9e9e),
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                        Text(
                            'Grows Weight: 19.200',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Color(0xff9e9e9e),
                                fontWeight: FontWeight.w500),
                          ),
                           SizedBox(
                            height: 4,
                          ),
                           Text(
                            'Net Weight: 14.440',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Color(0xff9e9e9e),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 13),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: DeviceUtils.getScaledWidth(context, 0.40),
                            height: DeviceUtils.getScaledHeight(context, 0.055),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.green),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ))),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'PLACE ORDER',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),

                        ],
                      ),
                    ),

                  ],
                ),

              ],
            ),
          ),
        ],
      )),
    );
  }
}
