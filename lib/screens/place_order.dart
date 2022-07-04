import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/binding/binding.dart';
import 'package:untitled/binding/temp_save_orderbinding.dart';
import 'package:untitled/controller/controller.dart';
import 'package:untitled/screens/temp_save_order.dart';

class Place_order extends GetView<Place_orderController> {
  static String pageId = "/Place_order";

  Place_order({Key? key}) : super(key: key);
  var controller = Get.put(Place_orderController());
  //
  // String dropdownvalue = 'Select';
  // bool values = false;
  // final items =  ['Select','India','Pakisthan','Japan','Norve','America',];
  // String? value;
  // bool valuefirst = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: const Color(0xffffffff),
        leading:const Icon(
          Icons.arrow_back, color: Colors.grey,size: 28,),
        title: const Text("Place Order", style:TextStyle(color: Colors.grey),),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text("Select"),
                SizedBox(
                  width: 190,
                ),
                Text("Select")
              ],
            ),
            SizedBox(
              height: 20,
              width: 20,
            ),
            Row(
              children: [
            SizedBox(
              width: 10,
            ),
                Container(
                  height: 30,
                  width: 220,

                  child:Obx(
                    ()=>DropdownButton(
                    borderRadius:BorderRadius.circular(12),

                    // Initial Value
                    value:controller.dropdownvalue.value,
                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),
                    isExpanded: true,
                    isDense: true,
                    // Array list of items
                    items: controller.items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text( items,style: TextStyle(color: Colors.grey),),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value


                    onChanged: ( newValue) {
                      controller.dropdownvalue.value= newValue!.toString();
                    },
                  ),
                    )
                ),

                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 30,
                  width: 220,
                  child:Obx(
                      ()=>DropdownButton(
                    borderRadius:BorderRadius.circular(12),

                    // Initial Value
                    value:controller.dropdownvalue.value,
                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),
                    isExpanded: true,
                    isDense: true,
                    // Array list of items
                    items: controller.items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text( items,style: TextStyle(color: Colors.grey),),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: ( newValue) {
                      controller.dropdownvalue.value = newValue!.toString();
                    },
                  ),
                ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text("Rhodium%"),
              ],
            ),
            SizedBox(
              height: 10,
              width: 10,

            ),
            Row(
              children: [
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Text("Rhodium on Stones", style: TextStyle(color: Colors.grey,fontSize: 12),),
                SizedBox(
                  width: 130,
                ),
                Text("Rhodium on Plain Part", style: TextStyle(color: Colors.grey,fontSize: 12),),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 220,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: '                                            %'
                    ),
                    onChanged: (text) {
                      // do something with text
                    },
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 220,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: '                                            %'
                    ),
                    onChanged: (text) {
                      // do something with text
                    },
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("These % indicates % of pieces you required Rhodium on. "),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Row(
                children: [
                  Text("Remarks",style: TextStyle(color: Colors.grey),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 12),
              child: Container(
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Type here..",
                  ),
                  onChanged: (text) {
                    // do something with text
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text("Dull Texture %"),
              ],
            ),
            SizedBox(
              height: 10,
              width: 10,

            ),
            Row(
              children: [
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Text("Sandblasting Dull", style: TextStyle(color: Colors.grey,fontSize: 12),),
                SizedBox(
                  width: 160,
                ),
                Text("Satin Dull", style: TextStyle(color: Colors.grey,fontSize: 12),),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: '                                       %'
                    ),
                    onChanged: (text) {
                    },
                  ),
                ),
                Container(
                  child: Ink(
                    decoration: ShapeDecoration(
                      //  color: Colors.green,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.photo_camera_back),
                      color: Colors.black,
                      onPressed: () {
                        print("You Pressed the icon!");
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 190,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: '                                   %'
                    ),
                    onChanged: (text) {
                      // do something with text
                    },
                  ),
                ),
                Container(
                  child: Ink(
                    decoration: ShapeDecoration(
                    //  color: Colors.green,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.photo_camera_back),
                      color: Colors.black,
                      onPressed: () {
                        print("You Pressed the icon!");
                      },
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("These % indicates % of pieces you required Dull Texture on."),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Row(
                children: [
                  Text("Remarks",style: TextStyle(color: Colors.grey),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 12),
              child: Container(
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Type here..",
                  ),
                  onChanged: (text) {
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Row(
              children: [
                Text("  Enamel%", style: TextStyle(color: Colors.grey,fontSize: 15),),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: '                                            %'
                    ),
                    onChanged: (text) {
                    },
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(child: Text("These % indicates % of pieces you required Dull Texture on.", style: TextStyle(color: Colors.grey, fontSize:14),))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Row(
                children: [
                  Text("Remarks",style: TextStyle(color: Colors.grey),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 12),
              child: Container(
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Type here..",
                  ),
                  onChanged: (text) {
                    // do something with text
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left:8, right:8),
              child: Row(
                children: [
                  Text(" Color Stone", style: TextStyle(color: Colors.grey),),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Same as Desigen Seleccted", style: TextStyle(color: Colors.grey),),

                  Container(
                    height: 30,
                    width: 30,
                    child: Obx(
                      ()=>
                      Checkbox(
                        value: controller.valuefirst.value,
                        checkColor: Colors.yellow,
                        activeColor: Colors.black,
                      onChanged: ( newValue) {
                        controller.valuefirst = newValue!.obs;
                      },

                        )
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Row(
              children: [
                Text("  Want to add some colors stone", style: TextStyle(color: Colors.grey,fontSize: 15),),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),

                Container(
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: '                                            %'
                    ),
                    onChanged: (text) {
                    },
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(child: Text("These % indicates % of pieces you required Dull Texture on.", style: TextStyle(color: Colors.grey, fontSize:14),)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Row(
                children: [
                  Text("Remarks",style: TextStyle(color: Colors.grey),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 12),
              child: Container(
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Type here..",
                  ),
                  onChanged: (text) {
                    // do something with text
                  },
                ),
              ),
            ),
            SizedBox(
              height: 15,
              width: 10,
            ),
            Row(
              children: [
                SizedBox(

                  width: 10,
                ),
                Text("Screw Type"),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 30,
                width: double.infinity,
                child:Obx(
                    ()=> DropdownButton(
                  borderRadius:BorderRadius.circular(12),

                  // Initial Value
                  value:controller.dropdownvalue.value,
                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),
                  isExpanded: true,
                  isDense: true,
                  // Array list of items
                  items: controller.items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text( items,style: TextStyle(color: Colors.grey),),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: ( newValue) {
                    controller.dropdownvalue.value = newValue!.toString();
                  },
                ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text("Final Order Remarks"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(

                  hintText: 'Type here..',
                ),
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 0),
                  child: Container(
                      height: 50,
                      width: 220,
                      child:ElevatedButton(
                        child: Text("TEMP SAVE", style: TextStyle(color: Colors.black, fontSize: 18),),
                        onPressed: (){
                          Get.to(Temp_save_order());
                        },
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
                Padding(
                  padding: const EdgeInsets.only(left: 15, right:0),
                  child: Container(
                      height: 50,
                      width: 220,
                      child:ElevatedButton(
                        child: Text("PLACE ORDER", style: TextStyle(color: Colors.black, fontSize: 18),),
                        onPressed: () => print("it's pressed"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
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

          ],
        ),
      ),

    );
  }
}
