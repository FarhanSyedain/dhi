import '../drag_and_drop_screen/widgets/drag_and_drop_item_widget.dart';
import 'controller/drag_and_drop_controller.dart';
import 'models/drag_and_drop_item_model.dart';
import 'package:flutter/material.dart';
import 'package:test_this/core/app_export.dart';
import 'package:test_this/widgets/app_bar/appbar_image.dart';
import 'package:test_this/widgets/app_bar/appbar_title.dart';
import 'package:test_this/widgets/app_bar/custom_app_bar.dart';

class DragAndDropScreen extends GetWidget<DragAndDropController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleftBlueGray900,
                    margin: getMargin(left: 16, top: 12, bottom: 16),
                    onTap: onTapArrowleft),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_photos".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgOverflowmenu,
                      margin:
                          getMargin(left: 16, top: 12, right: 16, bottom: 15))
                ]),
            body: Padding(
                padding: getPadding(left: 16, top: 21, right: 16),
                child: Obx(() => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(131.00),
                        crossAxisCount: 3,
                        mainAxisSpacing: getHorizontalSize(3.00),
                        crossAxisSpacing: getHorizontalSize(3.00)),
                    physics: BouncingScrollPhysics(),
                    itemCount: controller
                        .dragAndDropModelObj.value.dragAndDropItemList.length,
                    itemBuilder: (context, index) {
                      DragAndDropItemModel model = controller
                          .dragAndDropModelObj.value.dragAndDropItemList[index];
                      return DragAndDropItemWidget(model);
                    })))));
  }

  onTapArrowleft() {
    Get.back();
  }
}
