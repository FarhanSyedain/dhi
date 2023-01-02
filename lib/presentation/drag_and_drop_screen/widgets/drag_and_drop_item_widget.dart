import '../controller/drag_and_drop_controller.dart';
import '../models/drag_and_drop_item_model.dart';
import 'package:flutter/material.dart';
import 'package:test_this/core/app_export.dart';

// ignore: must_be_immutable
class DragAndDropItemWidget extends StatelessWidget {
  DragAndDropItemWidget(this.dragAndDropItemModelObj);

  DragAndDropItemModel dragAndDropItemModelObj;

  var controller = Get.find<DragAndDropController>();

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle10,
      height: getSize(
        130.00,
      ),
      width: getSize(
        130.00,
      ),
    );
  }
}
