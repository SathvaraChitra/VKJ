import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:untitled/controller/sync_orderController.dart';

  class Sync_order extends GetView<Sync_order_controller> {
  static String pageId = "/Sync_order";

  const Sync_order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: const Color(0xffffffff),
        leading:const Icon(
          Icons.arrow_back, color: Colors.grey,size: 28),
        title: const Text("Unsync Orders", style:TextStyle(color: Colors.grey),),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.notifications_none_outlined, color: Colors.grey,size: 28,),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Container(
              height: 40,
              color: Colors.black,
              child: Center(
                child: Table(
                  defaultColumnWidth: FixedColumnWidth(80.0),
                  children: [
                    TableRow( children: [
                      Column(children:const [Text('Date', style: TextStyle(fontSize: 17,color:Color(0xffffce00),fontWeight: FontWeight.bold),)]),
                      Column(children:[Text('Party', style: TextStyle(fontSize: 15,color:Color(0xffffce00),fontWeight: FontWeight.bold))]),
                      Column(children:[Text('Order No..', style: TextStyle(fontSize:15,color:Color(0xffffce00),fontWeight: FontWeight.bold))]),
                      Column(children:[Text('Pcs', style: TextStyle(fontSize: 15,color:Color(0xffffce00),fontWeight: FontWeight.bold))]),
                      Column(children:[Text('Weight', style: TextStyle(fontSize: 15,color:Color(0xffffce00),fontWeight: FontWeight.bold))]),
                      Column(children:[Text('Karat', style: TextStyle(fontSize: 15,color:Color(0xffffce00),fontWeight: FontWeight.bold))]),
                    ]),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 1),
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) => Divider(
                  color: Colors.grey,
                ),
                itemCount: 20,
                itemBuilder: (context, i){
                  return Row(
                    children: const [
                      SizedBox(
                        width: 20,
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



          ],
        ),
      ),
    );
  }
}
