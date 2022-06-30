import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:untitled/controller/controller.dart';
import 'package:untitled/device/device_utils.dart';
import 'package:untitled/screens/screens.dart';

class MpinLoginShow extends GetView<MpinLoginShowController> {

   MpinLoginShow({Key? key}) : super(key: key);
  static String pageId = "/MPIN_Login_Show";

   final  controllerr = Get.put(MpinLoginShowController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body:  SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Align(
                    alignment: Alignment.center,
                    child: Stack(children: [
                      Image.asset(
                        'lib/assets/images/VKJapplogo.png',
                        width: DeviceUtils.getScaledWidth(context, 0.35),
                        height: DeviceUtils.getScaledHeight(context, 0.35),
                      ),
                    ])),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 70, top: 20),
                      child: Text(
                        'M-Pin',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18,
                          color: Color(0xff9e9e9e),
                          letterSpacing: 0.088,
                          fontWeight: FontWeight.w600,
                        ),
                        softWrap: false,
                      ),
                    ),
                    SizedBox(
                      width: DeviceUtils.getScaledWidth(context, 0.6833),
                      height: DeviceUtils.getScaledHeight(context, 0.05),
                      child: Obx(()=>
                        OTPTextField(
                            controller: controllerr.otpController,
                            length: 4,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            keyboardType: TextInputType.number,
                            textFieldAlignment: MainAxisAlignment.spaceAround,
                            fieldWidth: 50,
                            spaceBetween: 4,
                            fieldStyle: FieldStyle.underline,
                            obscureText: controllerr.pass.value,
                            style: const TextStyle(
                                fontSize: 18, color: Color(0xff9e9e9e)),
                            onChanged: (pin) {
                              print("Changed: $pin");
                            },
                            onCompleted: (pin) {
                              print("Completed: $pin");
                            }),
                      ),
                    ),
                      IconButton(
                          onPressed: () {
                            // Update the state i.e. toogle the state of passwordVisible variable

                              if (controllerr.pass.value) {
                                controllerr.pass.value = false;
                              } else {
                                controllerr.pass.value = true;

                            }
                          },
                          icon: Obx(
                                () =>
                             Icon(
                               controllerr.pass.value ? Icons.visibility : Icons.visibility_off,
                              color: const Color(0xff9e9e9e),
                            ),
                          )),

                  ],
                ),
                Container(
                  height: DeviceUtils.getScaledHeight(context, 0.21),
                ),
                Container(
                  width: DeviceUtils.getScaledWidth(context, 0.90),
                  height: DeviceUtils.getScaledHeight(context, 0.06),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(const Color(0xffffce00)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ))),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    onPressed: () {
                      Get.toNamed(Dashboard.pageId);
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Forgot M-Pin?',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xff9e9e9e),
                    letterSpacing: 0.098,
                    fontWeight: FontWeight.w600,
                  ),
                  softWrap: false,
                ),
                Container(
                  height: DeviceUtils.getScaledHeight(context, 0.10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: 'Terms & Condition',
                          style: TextStyle(
                            color: Color(0xff9e9e9e),
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ]),
                    ),
                    RichText(
                      text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                            color: Color(0xff9e9e9e),
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ]),
                    ),
                  ],
                )
              ],
            ),
          ),
      ),
    );
  }
}
