import 'package:get/get.dart';
import 'package:otp_text_field/otp_text_field.dart';

import 'controller.dart';

class MpinLoginShowController extends BaseController {
  OtpFieldController otpController = OtpFieldController();
  RxBool pass = true.obs;
  @override
  void errorHandler() {

  }

}
