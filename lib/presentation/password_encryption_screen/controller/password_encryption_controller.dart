import 'package:test_this/core/app_export.dart';
import 'package:test_this/presentation/password_encryption_screen/models/password_encryption_model.dart';

class PasswordEncryptionController extends GetxController {
  Rx<PasswordEncryptionModel> passwordEncryptionModelObj =
      PasswordEncryptionModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
