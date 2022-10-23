import 'controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application3/core/app_export.dart';

class HomeScreen extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 34,
                    top: 79,
                    right: 34,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        69.50,
                      ),
                    ),
                    child: CommonImageView(
                      imagePath: ImageConstant.imgProfileimage,
                      height: getSize(
                        139.00,
                      ),
                      width: getSize(
                        139.00,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 34,
                    top: 18,
                    right: 34,
                  ),
                  child: Text(
                    "lbl_adalah".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsSemiBold20,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 34,
                    top: 9,
                    right: 34,
                  ),
                  child: Text(
                    "lbl_alcanasatre".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular18,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 34,
                    top: 21,
                    right: 34,
                  ),
                  child: Text(
                    "msg_joined_6_month".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular10,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 34,
                    top: 49,
                    right: 30,
                    bottom: 239,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          decoration:
                              AppDecoration.fillDeeporange5000c.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder14,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 28,
                                  top: 21,
                                  bottom: 21,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgLocation,
                                  height: getVerticalSize(
                                    18.00,
                                  ),
                                  width: getHorizontalSize(
                                    20.00,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 61,
                                  top: 23,
                                  bottom: 18,
                                ),
                                child: Text(
                                  "lbl_personality".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium16,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 74,
                                  top: 27,
                                  right: 33,
                                  bottom: 27,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      2.50,
                                    ),
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgStroke1,
                                    height: getVerticalSize(
                                      6.00,
                                    ),
                                    width: getHorizontalSize(
                                      5.00,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: getMargin(
                            top: 13,
                          ),
                          decoration:
                              AppDecoration.fillDeeppurpleA4000c.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder14,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 31,
                                  top: 20,
                                  bottom: 20,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgFile,
                                  height: getVerticalSize(
                                    20.00,
                                  ),
                                  width: getHorizontalSize(
                                    17.00,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 53,
                                  top: 23,
                                  bottom: 18,
                                ),
                                child: Text(
                                  "lbl_work_today_s2".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtPoppinsMedium16DeeppurpleA400,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 69,
                                  top: 27,
                                  right: 28,
                                  bottom: 27,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      2.50,
                                    ),
                                  ),
                                  child: CommonImageView(
                                    svgPath:
                                        ImageConstant.imgStroke1DeepPurpleA400,
                                    height: getVerticalSize(
                                      6.00,
                                    ),
                                    width: getHorizontalSize(
                                      5.00,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: getMargin(
                            top: 13,
                          ),
                          decoration: AppDecoration.fillLightblue4000c.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder14,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 29,
                                  top: 20,
                                  bottom: 20,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgSettings,
                                  height: getVerticalSize(
                                    20.00,
                                  ),
                                  width: getHorizontalSize(
                                    19.00,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 79,
                                  top: 23,
                                  bottom: 18,
                                ),
                                child: Text(
                                  "lbl_setting".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtPoppinsMedium16Lightblue400,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 96,
                                  top: 27,
                                  right: 26,
                                  bottom: 27,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      2.50,
                                    ),
                                  ),
                                  child: CommonImageView(
                                    svgPath:
                                        ImageConstant.imgStroke1LightBlue400,
                                    height: getVerticalSize(
                                      6.00,
                                    ),
                                    width: getHorizontalSize(
                                      5.00,
                                    ),
                                    fit: BoxFit.cover,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
