import 'controller/terms_and_conditions_controller.dart';
import 'package:flutter/material.dart';
import 'package:test_this/core/app_export.dart';
import 'package:test_this/widgets/app_bar/appbar_image.dart';
import 'package:test_this/widgets/app_bar/appbar_title.dart';
import 'package:test_this/widgets/app_bar/custom_app_bar.dart';

class TermsAndConditionsScreen extends GetWidget<TermsAndConditionsController> {
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
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 14, bottom: 15),
                    onTap: onTapArrowleft5),
                centerTitle: true,
                title: AppbarTitle(text: "msg_terms_and_conditions".tr)),
            body: Container(
                width: size.width,
                padding: getPadding(left: 16, top: 25, right: 16, bottom: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_lorem_ipsum".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtGilroySemiBold18.copyWith(
                              height: 1.22,
                              decoration: TextDecoration.underline)),
                      Container(
                          width: getHorizontalSize(394.00),
                          margin: getMargin(top: 15),
                          child: Text("msg_lorem_ipsum_dolor".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyMedium16Bluegray400
                                  .copyWith(height: 1.63))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(396.00),
                          margin: getMargin(top: 20),
                          decoration:
                              BoxDecoration(color: ColorConstant.blueGray100)),
                      Padding(
                          padding: getPadding(top: 20),
                          child: Text("lbl_lorem_ipsum".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold18.copyWith(
                                  height: 1.22,
                                  decoration: TextDecoration.underline))),
                      Container(
                          width: getHorizontalSize(394.00),
                          margin: getMargin(top: 15),
                          child: Text("msg_lorem_ipsum_dolor".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyMedium16Bluegray400
                                  .copyWith(height: 1.63))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(396.00),
                          margin: getMargin(top: 20),
                          decoration:
                              BoxDecoration(color: ColorConstant.blueGray100)),
                      Padding(
                          padding: getPadding(top: 20),
                          child: Text("lbl_lorem_ipsum".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold18.copyWith(
                                  height: 1.22,
                                  decoration: TextDecoration.underline))),
                      Container(
                          width: getHorizontalSize(394.00),
                          margin: getMargin(top: 15),
                          child: Text("msg_lorem_ipsum_dolor".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyMedium16Bluegray400
                                  .copyWith(height: 1.63))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(396.00),
                          margin: getMargin(top: 20),
                          decoration:
                              BoxDecoration(color: ColorConstant.blueGray100)),
                      Padding(
                          padding: getPadding(top: 20),
                          child: Text("lbl_lorem_ipsum".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold18.copyWith(
                                  height: 1.22,
                                  decoration: TextDecoration.underline))),
                      Container(
                          width: getHorizontalSize(394.00),
                          margin: getMargin(top: 15, bottom: 5),
                          child: Text("msg_lorem_ipsum_dolor".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyMedium16Bluegray400
                                  .copyWith(height: 1.63)))
                    ]))));
  }

  onTapArrowleft5() {
    Get.back();
  }
}
