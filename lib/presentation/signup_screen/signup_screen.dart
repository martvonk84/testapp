import 'controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application3/core/app_export.dart';
import 'package:mohammed_s_application3/widgets/custom_button.dart';
import 'package:mohammed_s_application3/widgets/custom_text_form_field.dart';

class SignupScreen extends GetWidget<SignupController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Padding(
                padding: getPadding(left: 28, top: 19, right: 36),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: size.width,
                              margin: getMargin(right: 9),
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
                                            getPadding(top: 22, bottom: 16),
                                        child: Text("lbl_sign_up".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsSemiBold18))
                                  ]))),
                      Expanded(
                          child: SingleChildScrollView(
                              padding: getPadding(top: 37),
                              child: Padding(
                                  padding: getPadding(bottom: 19),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            width: getHorizontalSize(216.00),
                                            margin: getMargin(right: 10),
                                            child: Text("msg_when_community".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtPoppinsBold34
                                                    .copyWith(height: 1.18))),
                                        Container(
                                            width: getHorizontalSize(244.00),
                                            margin:
                                                getMargin(top: 13, right: 10),
                                            child: Text(
                                                "msg_our_community_i3".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular12Black9007e
                                                    .copyWith(
                                                        letterSpacing: 0.12,
                                                        height: 1.67))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 58,
                                                    top: 13,
                                                    right: 58),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgLogo120X114,
                                                    height:
                                                        getVerticalSize(120.00),
                                                    width: getHorizontalSize(
                                                        114.00)))),
                                        CustomTextFormField(
                                            width: 311,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.firstnameController,
                                            hintText: "lbl_first_name2".tr,
                                            margin: getMargin(top: 96)),
                                        CustomTextFormField(
                                            width: 311,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.lastnameController,
                                            hintText: "lbl_last_name2".tr,
                                            margin: getMargin(top: 24)),
                                        CustomTextFormField(
                                            width: 311,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.emailController,
                                            hintText: "lbl_e_mail2".tr,
                                            margin: getMargin(top: 24)),
                                        CustomTextFormField(
                                            width: 311,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.passwordController,
                                            hintText: "lbl_password".tr,
                                            margin: getMargin(top: 24),
                                            textInputAction:
                                                TextInputAction.done,
                                            isObscureText: true),
                                        Container(
                                            width: getHorizontalSize(248.00),
                                            margin: getMargin(
                                                left: 1, top: 25, right: 10),
                                            child: Text(
                                                "msg_lorem_ipsum_dol".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium12
                                                    .copyWith(
                                                        letterSpacing: 0.12,
                                                        height: 1.67))),
                                        CustomButton(
                                            width: 311,
                                            text: "lbl_next".tr,
                                            margin: getMargin(top: 33),
                                            onTap: onTapBtnNext),
                                        Align(
                                            alignment: Alignment.center,
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapAlreadyhavean();
                                                },
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 58,
                                                        top: 32,
                                                        right: 49),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 1),
                                                              child: Text(
                                                                  "msg_already_have_an"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsMedium12
                                                                      .copyWith(
                                                                          letterSpacing:
                                                                              0.12,
                                                                          height:
                                                                              1.00))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 8),
                                                              child: Text(
                                                                  "lbl_login"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsSemiBold12
                                                                      .copyWith(
                                                                          letterSpacing:
                                                                              0.12,
                                                                          height:
                                                                              1.00)))
                                                        ]))))
                                      ]))))
                    ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapBtnNext() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapAlreadyhavean() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}
