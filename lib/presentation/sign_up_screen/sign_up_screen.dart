import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:test_this/core/app_export.dart';
import 'package:test_this/core/utils/validation_functions.dart';
import 'package:test_this/widgets/app_bar/appbar_image.dart';
import 'package:test_this/widgets/app_bar/appbar_title.dart';
import 'package:test_this/widgets/app_bar/custom_app_bar.dart';
import 'package:test_this/widgets/custom_button.dart';
import 'package:test_this/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
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
                    margin: getMargin(left: 16, top: 14, bottom: 18),
                    onTap: onTapArrowleft3),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_sign_up".tr)),
            body: Form(
                key: _formKey,
                child: Container(
                    width: size.width,
                    padding:
                        getPadding(left: 16, top: 22, right: 16, bottom: 22),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("msg_create_your_account".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyBold24
                                  .copyWith(height: 1.25)),
                          Padding(
                              padding: getPadding(top: 31),
                              child: Text("lbl_first_name".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyMedium16
                                      .copyWith(height: 1.19))),
                          CustomTextFormField(
                              width: 396,
                              focusNode: FocusNode(),
                              controller: controller.group10198Controller,
                              hintText: "msg_enter_first_name".tr,
                              margin: getMargin(top: 8),
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          Padding(
                              padding: getPadding(top: 19),
                              child: Text("lbl_last_name".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyMedium16
                                      .copyWith(height: 1.19))),
                          CustomTextFormField(
                              width: 396,
                              focusNode: FocusNode(),
                              controller: controller.group10198OneController,
                              hintText: "lbl_enter_last_name".tr,
                              margin: getMargin(top: 7),
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          Container(
                              width: getHorizontalSize(396.00),
                              margin: getMargin(top: 18),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_email_id".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyMedium16
                                            .copyWith(height: 1.19)),
                                    CustomTextFormField(
                                        width: 396,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.group10198TwoController,
                                        hintText: "lbl_enter_email_id".tr,
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
                              margin: getMargin(top: 18),
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
                                        style: AppStyle.txtGilroyMedium16
                                            .copyWith(height: 1.19)),
                                    CustomTextFormField(
                                        width: 396,
                                        focusNode: FocusNode(),
                                        controller: controller
                                            .group10198ThreeController,
                                        hintText: "msg_enter_mobile_number".tr,
                                        margin: getMargin(top: 8),
                                        validator: (value) {
                                          if (!isValidPhone(value)) {
                                            return "Please enter valid phone number";
                                          }
                                          return null;
                                        })
                                  ])),
                          Container(
                              width: getHorizontalSize(396.00),
                              margin: getMargin(top: 19),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_password".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyMedium16
                                            .copyWith(height: 1.19)),
                                    Obx(() => CustomTextFormField(
                                        width: 396,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.group10198FourController,
                                        hintText: "lbl_enter_password".tr,
                                        margin: getMargin(top: 7),
                                        padding:
                                            TextFormFieldPadding.PaddingT12,
                                        textInputAction: TextInputAction.done,
                                        suffix: InkWell(
                                            onTap: () {
                                              controller.isShowPassword.value =
                                                  !controller
                                                      .isShowPassword.value;
                                            },
                                            child: Container(
                                                margin: getMargin(all: 12),
                                                child: CustomImageView(
                                                    svgPath: controller
                                                            .isShowPassword
                                                            .value
                                                        ? ImageConstant.imgEye
                                                        : ImageConstant
                                                            .imgEye))),
                                        suffixConstraints: BoxConstraints(
                                            minWidth: getHorizontalSize(20.00),
                                            minHeight: getVerticalSize(20.00)),
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidPassword(value,
                                                  isRequired: true))) {
                                            return "Please enter valid password";
                                          }
                                          return null;
                                        },
                                        isObscureText:
                                            !controller.isShowPassword.value))
                                  ])),
                          CustomButton(
                              height: 50,
                              width: 396,
                              text: "lbl_create_account".tr,
                              margin: getMargin(top: 24, bottom: 5))
                        ])))));
  }

  onTapArrowleft3() {
    Get.back();
  }
}
