import 'package:test_this/core/app_export.dart';
import 'package:test_this/presentation/drag_and_drop_screen/models/drag_and_drop_model.dart';

class DragAndDropController extends GetxController {
  Rx<DragAndDropModel> dragAndDropModelObj = DragAndDropModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
