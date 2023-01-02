import 'controller/phone_verification_controller.dart';
import 'package:flutter/material.dart';
import 'package:test_this/core/app_export.dart';
import 'package:test_this/widgets/custom_button.dart';

class PhoneVerificationScreen extends GetWidget<PhoneVerificationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: Container(
          width: size.width,
          padding: getPadding(
            left: 16,
            top: 76,
            right: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgMobile,
                height: getVerticalSize(
                  82.00,
                ),
                width: getHorizontalSize(
                  51.00,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 29,
                ),
                child: Text(
                  "msg_phone_verification".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroySemiBold24.copyWith(
                    height: 1.21,
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  302.00,
                ),
                margin: getMargin(
                  top: 23,
                ),
                child: Text(
                  "msg_a_text_message_with".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtGilroyMedium16Bluegray400.copyWith(
                    height: 1.63,
                  ),
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgGroup2507,
                height: getVerticalSize(
                  1.00,
                ),
                width: getHorizontalSize(
                  280.00,
                ),
                margin: getMargin(
                  top: 64,
                ),
              ),
              CustomButton(
                height: 50,
                width: 396,
                text: "lbl_next".tr,
                margin: getMargin(
                  top: 40,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    top: 18,
                    bottom: 5,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 2,
                        ),
                        child: Text(
                          "msg_didn_t_get_the_code".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtGilroyMedium16Bluegray400.copyWith(
                            height: 1.19,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 12,
                          bottom: 1,
                        ),
                        child: Text(
                          "lbl_resend".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtGilroySemiBold16BlueA700.copyWith(
                            height: 1.25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
