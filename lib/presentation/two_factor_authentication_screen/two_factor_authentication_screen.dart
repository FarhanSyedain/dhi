import 'controller/two_factor_authentication_controller.dart';
import 'package:flutter/material.dart';
import 'package:test_this/core/app_export.dart';
import 'package:test_this/widgets/custom_button.dart';

class TwoFactorAuthenticationScreen
    extends GetWidget<TwoFactorAuthenticationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: Container(
          width: size.width,
          padding: getPadding(
            left: 16,
            right: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgMobile,
                height: getVerticalSize(
                  60.00,
                ),
                width: getHorizontalSize(
                  38.00,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 13,
                ),
                child: Text(
                  "msg_otp_verification".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroySemiBold24BlueA700.copyWith(
                    height: 1.21,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 32,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "OTP Is Send to".tr,
                        style: TextStyle(
                          color: ColorConstant.fromHex("#ff74839d"),
                          fontSize: getFontSize(
                            18,
                          ),
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w500,
                          height: 1.61,
                        ),
                      ),
                      TextSpan(
                        text: " ",
                        style: TextStyle(
                          color: ColorConstant.fromHex("#ff666666"),
                          fontSize: getFontSize(
                            18,
                          ),
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w500,
                          height: 1.61,
                        ),
                      ),
                      TextSpan(
                        text: "+91 01234567890".tr,
                        style: TextStyle(
                          color: ColorConstant.fromHex("#ff0061ff"),
                          fontSize: getFontSize(
                            18,
                          ),
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w700,
                          height: 1.61,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgFrame9880,
                height: getVerticalSize(
                  52.00,
                ),
                width: getHorizontalSize(
                  320.00,
                ),
                margin: getMargin(
                  top: 27,
                ),
              ),
              CustomButton(
                height: 50,
                width: 396,
                text: "lbl_verify_otp".tr,
                margin: getMargin(
                  top: 32,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 26,
                  bottom: 5,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Didn’t Recieved Code ?".tr,
                        style: TextStyle(
                          color: ColorConstant.fromHex("#ff74839d"),
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w500,
                          height: 1.63,
                        ),
                      ),
                      TextSpan(
                        text: " ",
                        style: TextStyle(
                          color: ColorConstant.fromHex("#ff0061ff"),
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w500,
                          height: 1.63,
                        ),
                      ),
                      TextSpan(
                        text: "Resend ".tr,
                        style: TextStyle(
                          color: ColorConstant.fromHex("#ff0061ff"),
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w700,
                          height: 1.63,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
