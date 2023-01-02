import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:test_this/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: Container(
          width: size.width,
          padding: getPadding(
            left: 33,
            right: 33,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgVectorBlueA70034x360,
                height: getVerticalSize(
                  34.00,
                ),
                width: getHorizontalSize(
                  360.00,
                ),
                margin: getMargin(
                  bottom: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
