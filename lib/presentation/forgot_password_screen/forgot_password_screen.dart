import 'controller/forgot_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application3/core/app_export.dart';
import 'package:mohammed_s_application3/widgets/custom_button.dart';
import 'package:mohammed_s_application3/widgets/custom_text_form_field.dart';

class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: size.width,
                              margin: getMargin(left: 19, top: 27, right: 19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: EdgeInsets.all(0),
                                        color: ColorConstant.gray5063,
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                color: ColorConstant.gray90063,
                                                width: getHorizontalSize(1.00)),
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder14),
                                        child: Container(
                                            height: getVerticalSize(60.00),
                                            width: getHorizontalSize(67.00),
                                            decoration: AppDecoration
                                                .outlineGray90063
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
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
                                                                  getVerticalSize(
                                                                      6.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      4.00)))))
                                            ]))),
                                    Padding(
                                        padding:
                                            getPadding(top: 21, bottom: 18),
                                        child: Text("lbl_forgot_password".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsSemiBold18))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(260.00),
                              margin: getMargin(left: 31, top: 31, right: 31),
                              child: Text("msg_helping_others".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold34
                                      .copyWith(height: 1.29)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(245.00),
                              margin: getMargin(left: 32, top: 11, right: 32),
                              child: Text("msg_if_you_are_alwa".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium12.copyWith(
                                      letterSpacing: 0.12, height: 1.67)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 19, top: 37, right: 19),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgLogo121X135,
                                  height: getVerticalSize(121.00),
                                  width: getHorizontalSize(135.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 19, top: 32, right: 19),
                              child: Text("lbl_forgot_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold18))),
                      CustomTextFormField(
                          width: 311,
                          focusNode: FocusNode(),
                          controller: controller.yourEmailController,
                          hintText: "lbl_your_email".tr,
                          margin: getMargin(left: 19, top: 48, right: 19),
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.center),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(245.00),
                              margin: getMargin(left: 32, top: 22, right: 32),
                              child: Text("msg_lorem_ipsum_dol".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular12.copyWith(
                                      letterSpacing: 0.12, height: 1.67)))),
                      CustomButton(
                          width: 311,
                          text: "lbl_start".tr,
                          margin: getMargin(
                              left: 19, top: 21, right: 19, bottom: 20),
                          onTap: onTapBtnStart,
                          alignment: Alignment.center)
                    ])))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapBtnStart() {
    Get.toNamed(AppRoutes.homeScreen);
  }
}
