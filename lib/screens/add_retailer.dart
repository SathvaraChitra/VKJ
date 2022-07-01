import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:untitled/controller/controller.dart';

class Add_retailer extends GetView<Add_retailerController> {
  static String pageId = "/add_retailer";

  Add_retailer({Key? key}) : super(key: key);

  var controller = Get.put(Add_retailerController());

  //
  // late String _dropDownValue;
  // RxString dropdownvalue = 'Select'.obs;
  // final items =  ['Select','India','Pakisthan','Japan','Norve','America',];
  // String? value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      elevation: 2,
      backgroundColor: const Color(0xffffffff),
      leading:const Icon(
        Icons.arrow_back, color: Colors.grey,size: 28,),
      title: const Text("Add Retailer", style:TextStyle(color: Colors.grey),),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(Icons.notifications_none_outlined, color: Colors.grey,size: 28,),
        )
      ],
    ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children:[
                SizedBox(
                  width: 15,
                ),
                Text("Company Name", style:
                TextStyle(color: Colors.black,)),

                SizedBox(
                  width: 150,
                ),
                Text("Country", style:
                TextStyle(color: Colors.black,)),

              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children:[
                SizedBox(
                  width: 10,
                  height: 10,
                ),
                Container(
                  height:30,
                  width: 220,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 30,
                  width: 220,

                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(3.0)
                  ),


                  child: Obx(
                      ()=>DropdownButton(
                      borderRadius:BorderRadius.circular(12),

                      // Initial Value
                      value: controller.dropdownvalue.value,
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
              height: 20,
              width: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text("State", style:
                TextStyle(color: Colors.black,)),

                SizedBox(
                  width: 220,
                ),
                Text("City", style:
                TextStyle(color: Colors.black,)),

              ],
            ),

            Row(
              children: [
                SizedBox(
                  width: 13,
                ),
                Container(
                  height: 30,
                  width: 220,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(3.0)
                  ),

                  child: Obx(
                    ()=> DropdownButton(
                    borderRadius:BorderRadius.circular(12),

                    // Initial Value
                    value: controller.dropdownvalue.value,
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
                SizedBox(
                  width: 30,
                  height: 10,
                ),
                Container(
                  height:30,
                  width: 220,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),


            SizedBox(
              height: 20,
              width: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text("Pin Code", style:
                TextStyle(color: Colors.black,)),

                SizedBox(
                  width: 190,
                ),
                Text("Address", style:
                TextStyle(color: Colors.black,)),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                  height: 10,
                ),
                Container(
                  height:30,
                  width: 220,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                  height: 10,
                ),
                Container(
                  height:30,
                  width: 220,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
              width: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text("Company Tel", style:
                TextStyle(color: Colors.black,)),

                SizedBox(
                  width: 170,
                ),
                Text("Company Mobile", style:
                TextStyle(color: Colors.black,)),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                  height: 10,
                ),
                Container(
                  height:30,
                  width: 220,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                  height: 10,
                ),
                Container(
                  height:30,
                  width: 30,
                  child: TextField(
                    style: TextStyle(fontSize: 5),
                    decoration: InputDecoration(
                        hintText: '+91',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height:30,
                  width: 190,
                  child: Center(
                    child: TextField(
                      style: TextStyle(fontSize: 13),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 13),
                        hintText: 'Enter Company',
                          hintTextDirection: TextDirection.ltr,

                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
              width: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text("Company Email for Orders:", style:
                TextStyle(color: Colors.black,)),

                SizedBox(
                  width: 80,
                ),
                Text("GSTin", style:
                TextStyle(color: Colors.black,)),

              ],
            ),

            Row(
              children: [
                SizedBox(
                  width: 13,
                ),
                Container(
                  height: 30,
                  width: 220,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(3.0)
                  ),


                  child:Obx(
                      ()=> DropdownButton(
                    borderRadius:BorderRadius.circular(12),

                    // Initial Value
                    value: controller.dropdownvalue.value,
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
                    onChanged:(newValue) {

                      controller.dropdownvalue.value = newValue!.toString();

                },
                  ),
                  ),
                ),
                SizedBox(
                  width: 30,
                  height: 10,
                ),
                Container(
                  height:30,
                  width: 220,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
              width: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text("PAN", style:
                TextStyle(color: Colors.black,)),

                SizedBox(
                  width: 220,
                ),
                Text("Under Distributore Name", style:
                TextStyle(color: Colors.black,)),

              ],
            ),

            Row(
              children: [
                SizedBox(
                  width: 13,
                ),
                Container(
                  height: 30,
                  width: 220,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(3.0)
                  ),


                  child:Obx(
                      ()=>DropdownButton(
                    borderRadius:BorderRadius.circular(12),

                    // Initial Value
                    value: controller.dropdownvalue.value,
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
                    onChanged: (newValue) {

                      controller.dropdownvalue.value = newValue!.toString();

                },
                  ),
                  ),
                ),
                SizedBox(
                  width: 30,
                  height: 10,
                ),
                Container(
                  height:30,
                  width: 220,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
              width: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text("PAN", style:
                TextStyle(color: Colors.black,)),

                SizedBox(
                  width: 220,
                ),
              ],
            ),
            SizedBox(
              width: 10,

            ),

            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  height:30,
                  width: 220,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
        SizedBox(
          height: 60,
        ),
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Container(
              height: 40,
              width: 230,
              child:OutlinedButton(
                onPressed: () {},
                child: Text('Cancle',style: TextStyle(color: Colors.black),),
                style: ElevatedButton.styleFrom(
                  side: BorderSide(width: 1.0, color: Colors.black),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                )
              ),
            ),
            SizedBox(
              height: 30,
              width: 10,
            ),
            Container(
              height: 40,
              width: 230,
              child:ElevatedButton(
                child: Text("Add Retailer", style: TextStyle(color: Colors.black),),
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

          ],
        ),

          ],
        ),
      ),
    );
  }
}
