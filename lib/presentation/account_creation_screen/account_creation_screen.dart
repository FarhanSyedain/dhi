import 'controller/account_creation_controller.dart';
import 'package:flutter/material.dart';
import 'package:test_this/core/app_export.dart';
import 'package:test_this/core/utils/validation_functions.dart';
import 'package:test_this/widgets/custom_button.dart';
import 'package:test_this/widgets/custom_text_form_field.dart';

class AccountCreationScreen extends GetWidget<AccountCreationController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray50,
        body: Form(
          key: _formKey,
          child: Container(
            width: size.width,
            padding: getPadding(
              left: 16,
              top: 24,
              right: 16,
              bottom: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: getSize(
                      150.00,
                    ),
                    width: getSize(
                      150.00,
                    ),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse5,
                          height: getSize(
                            150.00,
                          ),
                          width: getSize(
                            150.00,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              75.00,
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: getMargin(
                              top: 5,
                              right: 2,
                            ),
                            color: ColorConstant.blueA700,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.circleBorder15,
                            ),
                            child: Container(
                              height: getSize(
                                30.00,
                              ),
                              width: getSize(
                                30.00,
                              ),
                              padding: getPadding(
                                all: 3,
                              ),
                              decoration: AppDecoration.fillBlueA700.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder15,
                              ),
                              child: Stack(
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgForward,
                                    height: getSize(
                                      24.00,
                                    ),
                                    width: getSize(
                                      24.00,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 26,
                  ),
                  child: Text(
                    "lbl_first_name".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGilroyMedium16.copyWith(
                      height: 1.19,
                    ),
                  ),
                ),
                CustomTextFormField(
                  width: 396,
                  focusNode: FocusNode(),
                  controller: controller.group10198Controller,
                  hintText: "msg_enter_first_name".tr,
                  margin: getMargin(
                    top: 8,
                  ),
                  validator: (value) {
                    if (!isText(value)) {
                      return "Please enter valid text";
                    }
                    return null;
                  },
                ),
                Container(
                  width: getHorizontalSize(
                    396.00,
                  ),
                  margin: getMargin(
                    top: 19,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder6,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_last_name".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtGilroyMedium16.copyWith(
                          height: 1.19,
                        ),
                      ),
                      CustomTextFormField(
                        width: 396,
                        focusNode: FocusNode(),
                        controller: controller.group10198OneController,
                        hintText: "lbl_enter_last_name".tr,
                        margin: getMargin(
                          top: 7,
                        ),
                        validator: (value) {
                          if (!isText(value)) {
                            return "Please enter valid text";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    396.00,
                  ),
                  margin: getMargin(
                    top: 18,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder6,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_mobile_number".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtGilroyMedium16.copyWith(
                          height: 1.19,
                        ),
                      ),
                      CustomTextFormField(
                        width: 396,
                        focusNode: FocusNode(),
                        controller: controller.group10198TwoController,
                        hintText: "msg_enter_mobile_number".tr,
                        margin: getMargin(
                          top: 8,
                        ),
                        validator: (value) {
                          if (!isValidPhone(value)) {
                            return "Please enter valid phone number";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    396.00,
                  ),
                  margin: getMargin(
                    top: 18,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder6,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_email_id".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtGilroyMedium16.copyWith(
                          height: 1.19,
                        ),
                      ),
                      CustomTextFormField(
                        width: 396,
                        focusNode: FocusNode(),
                        controller: controller.group10198ThreeController,
                        hintText: "lbl_enter_email_id".tr,
                        margin: getMargin(
                          top: 8,
                        ),
                        validator: (value) {
                          if (value == null ||
                              (!isValidEmail(value, isRequired: true))) {
                            return "Please enter valid email";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    396.00,
                  ),
                  margin: getMargin(
                    top: 18,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder6,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_set_password".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtGilroyMedium16.copyWith(
                          height: 1.19,
                        ),
                      ),
                      CustomTextFormField(
                        width: 396,
                        focusNode: FocusNode(),
                        controller: controller.group10198FourController,
                        hintText: "lbl_set_password".tr,
                        margin: getMargin(
                          top: 8,
                        ),
                        textInputAction: TextInputAction.done,
                        validator: (value) {
                          if (value == null ||
                              (!isValidPassword(value, isRequired: true))) {
                            return "Please enter valid password";
                          }
                          return null;
                        },
                        isObscureText: true,
                      ),
                    ],
                  ),
                ),
                CustomButton(
                  height: 50,
                  width: 396,
                  text: "lbl_create_account".tr,
                  margin: getMargin(
                    top: 24,
                    bottom: 5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
