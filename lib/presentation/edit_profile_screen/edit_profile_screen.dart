import 'controller/edit_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:test_this/core/app_export.dart';
import 'package:test_this/core/utils/validation_functions.dart';
import 'package:test_this/widgets/app_bar/appbar_image.dart';
import 'package:test_this/widgets/app_bar/appbar_title.dart';
import 'package:test_this/widgets/app_bar/custom_app_bar.dart';
import 'package:test_this/widgets/custom_button.dart';
import 'package:test_this/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends GetWidget<EditProfileController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 12, bottom: 16),
                    onTap: onTapArrowleft1),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_edit_profile".tr)),
            body: Form(
                key: _formKey,
                child: Container(
                    width: size.width,
                    padding:
                        getPadding(left: 15, top: 21, right: 15, bottom: 21),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  height: getSize(150.00),
                                  width: getSize(150.00),
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse5,
                                            height: getSize(150.00),
                                            width: getSize(150.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(75.00)),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Card(
                                                clipBehavior: Clip.antiAlias,
                                                elevation: 0,
                                                margin:
                                                    getMargin(top: 5, right: 2),
                                                color: ColorConstant.blueA700,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder15),
                                                child: Container(
                                                    height: getSize(30.00),
                                                    width: getSize(30.00),
                                                    padding: getPadding(all: 3),
                                                    decoration: AppDecoration
                                                        .fillBlueA700
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .circleBorder15),
                                                    child: Stack(children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgForward,
                                                          height:
                                                              getSize(24.00),
                                                          width: getSize(24.00),
                                                          alignment:
                                                              Alignment.center)
                                                    ]))))
                                      ]))),
                          Padding(
                              padding: getPadding(left: 1, top: 26),
                              child: Text("lbl_first_name".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyMedium16
                                      .copyWith(height: 1.19))),
                          CustomTextFormField(
                              width: 396,
                              focusNode: FocusNode(),
                              controller: controller.group10198Controller,
                              hintText: "lbl_michelle".tr,
                              margin: getMargin(left: 1, top: 8)),
                          Container(
                              width: getHorizontalSize(396.00),
                              margin: getMargin(left: 1, top: 19),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_last_name".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyMedium16
                                            .copyWith(height: 1.19)),
                                    CustomTextFormField(
                                        width: 396,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.group10198OneController,
                                        hintText: "lbl_rock".tr,
                                        margin: getMargin(top: 7))
                                  ])),
                          Container(
                              width: getHorizontalSize(396.00),
                              margin: getMargin(left: 1, top: 18),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_email_id2".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium16Bluegray800
                                            .copyWith(height: 1.19)),
                                    CustomTextFormField(
                                        width: 396,
                                        focusNode: FocusNode(),
                                        controller: controller.emailController,
                                        hintText:
                                            "msg_michellerock_gmail_com".tr,
                                        margin: getMargin(top: 8),
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidEmail(value,
                                                  isRequired: true))) {
                                            return "Please enter valid email";
                                          }
                                          return null;
                                        })
                                  ])),
                          Container(
                              width: getHorizontalSize(396.00),
                              margin: getMargin(left: 1, top: 18),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_website".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium16Bluegray800
                                            .copyWith(height: 1.19)),
                                    CustomTextFormField(
                                        width: 396,
                                        focusNode: FocusNode(),
                                        controller: controller.weburlController,
                                        hintText: "msg_michellerock_com".tr,
                                        margin: getMargin(top: 8))
                                  ])),
                          Container(
                              width: getHorizontalSize(396.00),
                              margin: getMargin(left: 1, top: 18),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_mobile_number".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium16Bluegray800
                                            .copyWith(height: 1.19)),
                                    CustomTextFormField(
                                        width: 396,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.mobileNoController,
                                        hintText: "lbl_1_2323232323".tr,
                                        margin: getMargin(top: 8),
                                        textInputAction: TextInputAction.done)
                                  ])),
                          CustomButton(
                              height: 50,
                              width: 396,
                              text: "lbl_save".tr,
                              margin: getMargin(left: 2, top: 24, bottom: 5))
                        ])))));
  }

  onTapArrowleft1() {
    Get.back();
  }
}
