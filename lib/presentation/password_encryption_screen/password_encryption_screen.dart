import 'controller/password_encryption_controller.dart';
import 'package:flutter/material.dart';
import 'package:test_this/core/app_export.dart';

class PasswordEncryptionScreen extends GetWidget<PasswordEncryptionController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: Container(
          width: size.width,
          padding: getPadding(
            top: 279,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgCheckmark66x54,
                height: getVerticalSize(
                  66.00,
                ),
                width: getHorizontalSize(
                  54.00,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 30,
                ),
                child: Text(
                  "msg_password_encryption".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroySemiBold24.copyWith(
                    height: 1.21,
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  221.00,
                ),
                margin: getMargin(
                  top: 25,
                  bottom: 5,
                ),
                child: Text(
                  "msg_we_ve_protectected".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtGilroyMedium16Bluegray400.copyWith(
                    height: 1.63,
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
