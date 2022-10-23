import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application3/core/app_export.dart';
import 'package:mohammed_s_application3/widgets/custom_button.dart';
import 'package:mohammed_s_application3/widgets/custom_text_form_field.dart';

class LoginScreen extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(
                            left: 29, top: 19, right: 32, bottom: 56),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: size.width,
                                  margin: getMargin(right: 10),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: EdgeInsets.all(0),
                                            color: ColorConstant.gray5063,
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    color:
                                                        ColorConstant.gray90063,
                                                    width: getHorizontalSize(
                                                        1.00)),
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder14),
                                            child: Container(
                                                height: getVerticalSize(60.00),
                                                width: getHorizontalSize(72.00),
                                                decoration: AppDecoration
                                                    .outlineGray90063
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder14),
                                                child: Stack(children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 34,
                                                              top: 26,
                                                              right: 33,
                                                              bottom: 26),
                                                          child: InkWell(
                                                              onTap: () {
                                                                onTapImgArrowleft();
                                                              },
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgArrowleft,
                                                                  height:
                                                                      getVerticalSize(
                                                                          6.00),
                                                                  width: getHorizontalSize(
                                                                      4.00)))))
                                                ]))),
                                        Padding(
                                            padding:
                                                getPadding(top: 22, bottom: 16),
                                            child: Text("lbl_login".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsSemiBold18))
                                      ])),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: double.infinity,
                                      margin: getMargin(left: 3, top: 28),
                                      decoration: AppDecoration.fillWhiteA700,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                                width:
                                                    getHorizontalSize(219.00),
                                                margin: getMargin(right: 10),
                                                child: Text(
                                                    "msg_this_is_your_co".tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsBold34
                                                        .copyWith(
                                                            height: 1.18))),
                                            Container(
                                                width:
                                                    getHorizontalSize(282.00),
                                                margin: getMargin(
                                                    top: 15, right: 10),
                                                child: Text(
                                                    "msg_our_community_i2".tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsMedium12
                                                        .copyWith(
                                                            letterSpacing: 0.12,
                                                            height: 1.67))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 61,
                                                        top: 21,
                                                        right: 61),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgLogo113X116,
                                                        height: getVerticalSize(
                                                            113.00),
                                                        width:
                                                            getHorizontalSize(
                                                                116.00)))),
                                            CustomTextFormField(
                                                width: 311,
                                                focusNode: FocusNode(),
                                                controller:
                                                    controller.emailController,
                                                hintText: "lbl_email".tr,
                                                margin: getMargin(top: 115),
                                                shape: TextFormFieldShape
                                                    .RoundedBorder14),
                                            CustomTextFormField(
                                                width: 311,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .passwordController,
                                                hintText: "lbl_password".tr,
                                                margin: getMargin(top: 24),
                                                shape: TextFormFieldShape
                                                    .RoundedBorder14,
                                                textInputAction:
                                                    TextInputAction.done,
                                                isObscureText: true),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapTxtForgotpassword();
                                                },
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 2,
                                                        top: 29,
                                                        right: 10),
                                                    child: Text(
                                                        "msg_forgot_password"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsSemiBold12
                                                            .copyWith(
                                                                letterSpacing:
                                                                    0.12,
                                                                height:
                                                                    1.00)))),
                                            CustomButton(
                                                width: 311,
                                                text: "lbl_next".tr,
                                                margin: getMargin(top: 33),
                                                onTap: onTapBtnNext),
                                            Align(
                                                alignment: Alignment.center,
                                                child: GestureDetector(
                                                    onTap: () {
                                                      onTapDonthaveana();
                                                    },
                                                    child: Padding(
                                                        padding: getPadding(
                                                            left: 61,
                                                            top: 27,
                                                            right: 51),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          bottom:
                                                                              4),
                                                                  child: Text(
                                                                      "msg_don_t_have_an_a"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle.txtPoppinsMedium12.copyWith(
                                                                          letterSpacing:
                                                                              0.12,
                                                                          height:
                                                                              1.00))),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              8,
                                                                          top:
                                                                              1),
                                                                  child: Text(
                                                                      "lbl_signup2"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle.txtPoppinsSemiBold12.copyWith(
                                                                          letterSpacing:
                                                                              0.12,
                                                                          height:
                                                                              1.00)))
                                                            ]))))
                                          ])))
                            ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapTxtForgotpassword() {
    Get.toNamed(AppRoutes.forgotPasswordScreen);
  }

  onTapBtnNext() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapDonthaveana() {
    Get.toNamed(AppRoutes.signupScreen);
  }
}
