import 'controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application3/core/app_export.dart';
import 'package:mohammed_s_application3/widgets/custom_button.dart';

class SettingsScreen extends GetWidget<SettingsController> {
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: getMargin(left: 32, top: 37, right: 32),
                          color: ColorConstant.gray5063,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: ColorConstant.gray90063,
                                  width: getHorizontalSize(1.00)),
                              borderRadius: BorderRadiusStyle.roundedBorder14),
                          child: Container(
                              height: getVerticalSize(60.00),
                              width: getHorizontalSize(67.00),
                              decoration: AppDecoration.outlineGray90063
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder14),
                              child: Stack(children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 32,
                                            top: 26,
                                            right: 30,
                                            bottom: 26),
                                        child: InkWell(
                                            onTap: () {
                                              onTapImgArrowleft();
                                            },
                                            child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowleft,
                                                height: getVerticalSize(6.00),
                                                width:
                                                    getHorizontalSize(4.00)))))
                              ]))),
                      Padding(
                          padding: getPadding(left: 32, top: 67, right: 32),
                          child: Text("lbl_settings".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold28
                                  .copyWith(height: 1.00))),
                      Padding(
                          padding: getPadding(left: 32, top: 16, right: 32),
                          child: Text("msg_your_settings_s".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium12.copyWith(
                                  letterSpacing: 0.12, height: 1.00))),
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapPersonality();
                              },
                              child: Container(
                                  margin:
                                      getMargin(left: 32, top: 34, right: 32),
                                  decoration: AppDecoration.outlineBlack9000c
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder14),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 24, bottom: 21),
                                            child: Text("lbl_personality".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium12Gray90090)),
                                        Padding(
                                            padding: getPadding(
                                                left: 91,
                                                top: 27,
                                                right: 28,
                                                bottom: 27),
                                            child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowrightGray900,
                                                height: getVerticalSize(6.00),
                                                width: getHorizontalSize(3.00)))
                                      ])))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(left: 32, top: 14, right: 32),
                              decoration: AppDecoration.outlineBlack9000c1,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: GestureDetector(
                                            onTap: () {
                                              onTapLanguage();
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .outlineBlack9000c
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder14),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 25,
                                                              bottom: 21),
                                                          child: Text(
                                                              "lbl_language".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsMedium12Gray90090)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 93,
                                                              top: 27,
                                                              right: 28,
                                                              bottom: 27),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgArrowrightGray900,
                                                              height:
                                                                  getVerticalSize(
                                                                      6.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      3.00)))
                                                    ]))))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapTermandcondit();
                              },
                              child: Container(
                                  margin:
                                      getMargin(left: 32, top: 14, right: 32),
                                  decoration: AppDecoration.outlineBlack9000c
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder14),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 23, bottom: 24),
                                            child: Text(
                                                "msg_terms_and_condi".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium12Gray90090)),
                                        Padding(
                                            padding: getPadding(
                                                left: 58, top: 27, bottom: 27),
                                            child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowrightGray900,
                                                height: getVerticalSize(6.00),
                                                width: getHorizontalSize(3.00)))
                                      ])))),
                      CustomButton(
                          width: 311,
                          text: "lbl_log_out".tr,
                          margin: getMargin(
                              left: 32, top: 177, right: 32, bottom: 20),
                          variant: ButtonVariant.OutlineRedA40066,
                          fontStyle: ButtonFontStyle.PoppinsSemiBold16RedA40090,
                          alignment: Alignment.center)
                    ])))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapPersonality() {
    Get.toNamed(AppRoutes.personalityScreen);
  }

  onTapLanguage() {
    Get.toNamed(AppRoutes.languageScreen);
  }

  onTapTermandcondit() {
    Get.toNamed(AppRoutes.termsandconditionsScreen);
  }
}
