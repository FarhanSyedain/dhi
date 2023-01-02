import 'package:test_this/core/app_export.dart';
import 'package:test_this/presentation/phone_verification_screen/models/phone_verification_model.dart';

class PhoneVerificationController extends GetxController {
  Rx<PhoneVerificationModel> phoneVerificationModelObj =
      PhoneVerificationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
