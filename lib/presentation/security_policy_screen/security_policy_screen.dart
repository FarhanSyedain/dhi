import 'controller/security_policy_controller.dart';
import 'package:flutter/material.dart';
import 'package:test_this/core/app_export.dart';
import 'package:test_this/core/utils/validation_functions.dart';
import 'package:test_this/widgets/app_bar/appbar_image.dart';
import 'package:test_this/widgets/app_bar/appbar_title.dart';
import 'package:test_this/widgets/app_bar/custom_app_bar.dart';
import 'package:test_this/widgets/custom_button.dart';
import 'package:test_this/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SecurityPolicyScreen extends GetWidget<SecurityPolicyController> {
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
                    margin: getMargin(left: 16, top: 12, bottom: 18),
                    onTap: onTapArrowleft2),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_login".tr)),
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
                          Text("msg_username_or_email".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyMedium16Bluegray800
                                  .copyWith(height: 1.19)),
                          CustomTextFormField(
                              width: 396,
                              focusNode: FocusNode(),
                              controller: controller.emailController,
                              hintText: "msg_michellerock_gmail_com".tr,
                              margin: getMargin(top: 8),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          Padding(
                              padding: getPadding(top: 19),
                              child: Text("lbl_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyMedium16
                                      .copyWith(height: 1.19))),
                          Obx(() => CustomTextFormField(
                              width: 396,
                              focusNode: FocusNode(),
                              controller: controller.group10198Controller,
                              hintText: "lbl_enter_password".tr,
                              margin: getMargin(top: 7),
                              padding: TextFormFieldPadding.PaddingT12,
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword.value =
                                        !controller.isShowPassword.value;
                                  },
                                  child: Container(
                                      margin: getMargin(all: 12),
                                      child: CustomImageView(
                                          svgPath:
                                              controller.isShowPassword.value
                                                  ? ImageConstant.imgEye
                                                  : ImageConstant.imgEye))),
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
                              isObscureText: !controller.isShowPassword.value)),
                          Container(
                              width: getHorizontalSize(396.00),
                              margin: getMargin(top: 20),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("msg_sequrity_question".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyMedium16
                                            .copyWith(height: 1.19)),
                                    Container(
                                        margin: getMargin(top: 6),
                                        padding: getPadding(all: 10),
                                        decoration: AppDecoration
                                            .outlineBluegray100
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder6),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 2,
                                                      top: 3,
                                                      bottom: 1),
                                                  child: Text(
                                                      "msg_what_was_your_first"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtGilroyMedium16Bluegray200
                                                          .copyWith(
                                                              height: 1.19))),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowdown,
                                                  height: getSize(24.00),
                                                  width: getSize(24.00))
                                            ]))
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
                                    Text("lbl_answer".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium16Bluegray800
                                            .copyWith(height: 1.19)),
                                    CustomTextFormField(
                                        width: 396,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.group10198OneController,
                                        hintText: "lbl_pluto".tr,
                                        margin: getMargin(top: 7),
                                        textInputAction: TextInputAction.done)
                                  ])),
                          CustomButton(
                              height: 50,
                              width: 396,
                              text: "lbl_sign_in2".tr,
                              margin: getMargin(top: 24, bottom: 5))
                        ])))));
  }

  onTapArrowleft2() {
    Get.back();
  }
}
