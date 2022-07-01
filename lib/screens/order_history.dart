import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/controller.dart';
class Order_history extends GetView<Order_historyController> {
  static String pageId = "/Sync_order";

  Order_history({Key? key}) : super(key: key);


   //var slectedIndex;
   //var slectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: const Color(0xffffffff),
        leading:const Icon(
        Icons.arrow_back, color: Colors.grey,size: 28,),
        title: const Text("Order History", style:TextStyle(color: Colors.grey),),
        actions: const [
       Padding(
         padding: EdgeInsets.only(right: 10),
         child: Icon(Icons.notifications_none_outlined, color: Colors.grey,size: 28,),
       )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),

            Row(
              children:[
                SizedBox(width: 10,),
                Icon(Icons.arrow_back_ios_outlined,color: Colors.grey,),
                Container(
                    height:20,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 18,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child: Text(
                            '  ${ index } ',
                            style:
                            TextStyle(color: Colors.grey, fontSize: 16),

                          ),

                        );
                      },
                    )
                ),

                // ListView.builder(
                //   shrinkWrap: true,
                //   scrollDirection: Axis.horizontal,
                //   itemCount: 25,
                //   physics: const NeverScrollableScrollPhysics(),
                //   itemBuilder: (context, index){
                //       return Container(
                //
                //           color: _selectedIndex == index ? Colors.orange : Colors.white,
                //           child: ListTile(
                //               title: Center(
                //                 child: Text('$index'),
                //               ),onTap:(){
                //             setState((){
                //               _selectedIndex=index;
                //             });
                //           }));
                //   },
                // ),
                Expanded(child: const Icon(Icons.keyboard_arrow_right,color: Colors.grey,size: 40,)),
              ],
            ),
            SizedBox(
              height: 20,
              width: 20,
            ),

            Center(
              child: Container(
                height: 30,
                color: Colors.black,
                child: Center(
                  child: Table(
                    defaultColumnWidth: FixedColumnWidth(80.0),
                    children: [
                      TableRow( children: [
                        Column(children:const [Text('Date', style: TextStyle(fontSize: 17, color:Color(0xffffce00),fontWeight: FontWeight.bold),)]),
                        Column(children:[Text('Party', style: TextStyle(fontSize: 15,color:Color(0xffffce00),fontWeight: FontWeight.bold))]),
                        Column(children:[Text('Order No..', style: TextStyle(fontSize:15,color:Color(0xffffce00),fontWeight: FontWeight.bold))]),
                        Column(children:[Text('PCS', style: TextStyle(fontSize: 15,color:Color(0xffffce00),fontWeight: FontWeight.bold))]),
                        Column(children:[Text('Weight', style: TextStyle(fontSize: 15,color:Color(0xffffce00),fontWeight: FontWeight.bold))]),
                        Column(children:[Text('Karat', style: TextStyle(fontSize: 15,color:Color(0xffffce00),fontWeight: FontWeight.bold))]),
                      ]),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 400,
               // width: 400,
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.grey,
                  ),
                  itemCount: 20,
                  itemBuilder: (context, i){
                      return Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          Text("10/12/2022", style: TextStyle(color: Colors.grey),),
                          SizedBox(
                            width: 20,
                          ),
                          Text("PHPdots",style: TextStyle(color: Colors.grey)),
                          SizedBox(
                            width: 20,
                          ),
                          Text("03256988",style: TextStyle(color: Colors.grey)),
                          SizedBox(
                            width: 40,
                          ),
                          Text("999",style: TextStyle(color: Colors.grey)),
                          SizedBox(
                            width: 45,
                          ),
                          Text("3KG",style: TextStyle(color: Colors.grey)),
                          SizedBox(
                            width: 50,
                          ),
                          Text(" 14/18",style: TextStyle(color: Colors.grey)),
                        ],

                      );
                  },
                ),
              ),
            ),
          ],
        ),
      ),

    );


  }
}
