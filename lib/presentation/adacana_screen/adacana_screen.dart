import 'controller/adacana_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application3/core/app_export.dart';

class AdacanaScreen extends GetWidget<AdacanaController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: size.height,
                        width: size.width,
                        child: Stack(children: [
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(
                                      left: 40, top: 40, right: 40, bottom: 20),
                                  child: InkWell(
                                      onTap: () {
                                        onTapImgLogo();
                                      },
                                      child: CommonImageView(
                                          imagePath: ImageConstant.imgLogo,
                                          height: getVerticalSize(325.00),
                                          width: getHorizontalSize(238.00)))))
                        ]))))));
  }

  onTapImgLogo() {
    Get.toNamed(AppRoutes.loginOrSignupScreen);
  }
}
