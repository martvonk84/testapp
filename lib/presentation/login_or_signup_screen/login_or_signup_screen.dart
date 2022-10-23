import 'controller/login_or_signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application3/core/app_export.dart';
import 'package:mohammed_s_application3/widgets/custom_button.dart';

class LoginOrSignupScreen extends GetWidget<LoginOrSignupController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: getMargin(left: 26, top: 21, right: 26),
                              color: ColorConstant.gray5063,
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: ColorConstant.gray90063,
                                      width: getHorizontalSize(1.00)),
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder14),
                              child: Container(
                                  height: getVerticalSize(60.00),
                                  width: getHorizontalSize(67.00),
                                  decoration: AppDecoration.outlineGray90063
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder14),
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
                                                    svgPath: ImageConstant
                                                        .imgArrowleft,
                                                    height:
                                                        getVerticalSize(6.00),
                                                    width: getHorizontalSize(
                                                        4.00)))))
                                  ])))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(208.00),
                              margin: getMargin(left: 32, top: 33, right: 32),
                              child: Text("msg_welcome_to_our".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold34
                                      .copyWith(height: 1.18)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(280.00),
                              margin: getMargin(left: 32, top: 15, right: 32),
                              child: Text("msg_our_community_i".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular12.copyWith(
                                      letterSpacing: 0.12, height: 1.67)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 26, top: 31, right: 26),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgLogo105X117,
                                  height: getVerticalSize(105.00),
                                  width: getHorizontalSize(117.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 26, top: 37, right: 26),
                              child: Text("lbl_get_in_through".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold18))),
                      CustomButton(
                          width: 311,
                          text: "lbl_sign_up".tr,
                          margin: getMargin(left: 26, top: 35, right: 26),
                          onTap: onTapBtnSignup,
                          alignment: Alignment.center),
                      CustomButton(
                          width: 311,
                          text: "lbl_login".tr,
                          margin: getMargin(
                              left: 26, top: 14, right: 26, bottom: 20),
                          variant: ButtonVariant.FillDeeporange50063,
                          fontStyle:
                              ButtonFontStyle.PoppinsMedium14Deeporange500,
                          onTap: onTapBtnLogin,
                          alignment: Alignment.center)
                    ])))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapBtnSignup() {
    Get.toNamed(AppRoutes.signupScreen);
  }

  onTapBtnLogin() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}
