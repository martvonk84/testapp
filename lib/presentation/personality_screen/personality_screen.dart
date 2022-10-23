import 'controller/personality_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application3/core/app_export.dart';
import 'package:mohammed_s_application3/widgets/custom_button.dart';
import 'package:mohammed_s_application3/widgets/custom_icon_button.dart';
import 'package:mohammed_s_application3/widgets/custom_text_form_field.dart';

class PersonalityScreen extends GetWidget<PersonalityController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Padding(
                padding: getPadding(left: 32, top: 52, right: 32),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          width: size.width,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CustomIconButton(
                                    height: 60,
                                    width: 60,
                                    variant: IconButtonVariant.OutlineGray90063,
                                    onTap: () {
                                      onTapBtntf();
                                    },
                                    child: CommonImageView(
                                        svgPath:
                                            ImageConstant.imgArrowleftGray900)),
                                Padding(
                                    padding: getPadding(top: 22, bottom: 16),
                                    child: Text("lbl_personality".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold18))
                              ])),
                      Expanded(
                          child: SingleChildScrollView(
                              padding: getPadding(top: 19),
                              child: Padding(
                                  padding: getPadding(bottom: 20),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 86, right: 86),
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                69.50)),
                                                    child: CommonImageView(
                                                        imagePath: ImageConstant
                                                            .imgProfileimage,
                                                        height: getSize(139.00),
                                                        width: getSize(139.00),
                                                        fit: BoxFit.cover)))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 86,
                                                    top: 21,
                                                    right: 86),
                                                child: Text("lbl_edit_photo".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsMedium12Deeporange500a2
                                                        .copyWith(
                                                            letterSpacing: 0.12,
                                                            height: 1.00)))),
                                        Container(
                                            width: double.infinity,
                                            margin: getMargin(top: 56),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            10.00))),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(right: 10),
                                                      child: Text(
                                                          "lbl_username".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.12,
                                                                  height:
                                                                      1.00))),
                                                  CustomTextFormField(
                                                      width: 311,
                                                      focusNode: FocusNode(),
                                                      controller: controller
                                                          .usernameOneController,
                                                      hintText:
                                                          "lbl_adalahalcana".tr,
                                                      margin:
                                                          getMargin(top: 16),
                                                      variant:
                                                          TextFormFieldVariant
                                                              .OutlineGray9005e,
                                                      fontStyle:
                                                          TextFormFieldFontStyle
                                                              .PoppinsMedium14Gray900a2)
                                                ])),
                                        Container(
                                            width: double.infinity,
                                            margin: getMargin(top: 21),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            10.00))),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(right: 10),
                                                      child: Text(
                                                          "lbl_first_name".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.12,
                                                                  height:
                                                                      1.00))),
                                                  CustomTextFormField(
                                                      width: 311,
                                                      focusNode: FocusNode(),
                                                      controller: controller
                                                          .firstnameOneController,
                                                      hintText:
                                                          "lbl_alcanasatre".tr,
                                                      margin:
                                                          getMargin(top: 16),
                                                      variant:
                                                          TextFormFieldVariant
                                                              .OutlineGray9005e,
                                                      fontStyle:
                                                          TextFormFieldFontStyle
                                                              .PoppinsMedium14Gray900a2)
                                                ])),
                                        Container(
                                            width: double.infinity,
                                            margin: getMargin(top: 21),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            10.00))),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(right: 10),
                                                      child: Text(
                                                          "lbl_last_name".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.12,
                                                                  height:
                                                                      1.00))),
                                                  CustomTextFormField(
                                                      width: 311,
                                                      focusNode: FocusNode(),
                                                      controller: controller
                                                          .lastnameOneController,
                                                      hintText: "lbl_fourta".tr,
                                                      margin:
                                                          getMargin(top: 16),
                                                      variant:
                                                          TextFormFieldVariant
                                                              .OutlineGray9005e,
                                                      fontStyle:
                                                          TextFormFieldFontStyle
                                                              .PoppinsMedium14Gray900a2)
                                                ])),
                                        Container(
                                            width: double.infinity,
                                            margin: getMargin(top: 23),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            10.00))),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(right: 10),
                                                      child: Text(
                                                          "lbl_hobby".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.12,
                                                                  height:
                                                                      1.00))),
                                                  CustomTextFormField(
                                                      width: 311,
                                                      focusNode: FocusNode(),
                                                      controller: controller
                                                          .hobbyOneController,
                                                      hintText: "lbl_sleep".tr,
                                                      margin:
                                                          getMargin(top: 14),
                                                      variant:
                                                          TextFormFieldVariant
                                                              .OutlineGray9005e,
                                                      padding:
                                                          TextFormFieldPadding
                                                              .PaddingT23_1,
                                                      fontStyle:
                                                          TextFormFieldFontStyle
                                                              .PoppinsMedium14Gray900a2)
                                                ])),
                                        Container(
                                            width: double.infinity,
                                            margin: getMargin(top: 21),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            10.00))),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(right: 10),
                                                      child: Text(
                                                          "lbl_date_of_birth"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.12,
                                                                  height:
                                                                      1.00))),
                                                  CustomTextFormField(
                                                      width: 311,
                                                      focusNode: FocusNode(),
                                                      controller: controller
                                                          .priceController,
                                                      hintText:
                                                          "lbl_28_may_2002".tr,
                                                      margin:
                                                          getMargin(top: 16),
                                                      variant:
                                                          TextFormFieldVariant
                                                              .OutlineGray9005e,
                                                      padding:
                                                          TextFormFieldPadding
                                                              .PaddingT23_1,
                                                      fontStyle:
                                                          TextFormFieldFontStyle
                                                              .PoppinsMedium14Gray900a2)
                                                ])),
                                        Container(
                                            width: double.infinity,
                                            margin: getMargin(top: 23),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            10.00))),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(right: 10),
                                                      child: Text(
                                                          "lbl_country".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.12,
                                                                  height:
                                                                      1.00))),
                                                  CustomTextFormField(
                                                      width: 311,
                                                      focusNode: FocusNode(),
                                                      controller: controller
                                                          .countryOneController,
                                                      hintText:
                                                          "lbl_indonesian2".tr,
                                                      margin:
                                                          getMargin(top: 12),
                                                      variant:
                                                          TextFormFieldVariant
                                                              .OutlineGray9005e,
                                                      fontStyle:
                                                          TextFormFieldFontStyle
                                                              .PoppinsMedium14Gray900a2,
                                                      textInputAction:
                                                          TextInputAction.done)
                                                ])),
                                        CustomButton(
                                            width: 311,
                                            text: "lbl_change_save".tr,
                                            margin: getMargin(top: 34),
                                            fontStyle: ButtonFontStyle
                                                .PoppinsSemiBold16,
                                            onTap: onTapBtnChangesave)
                                      ]))))
                    ]))));
  }

  onTapBtntf() {
    Get.back();
  }

  onTapBtnChangesave() {
    Get.toNamed(AppRoutes.workTodayScreen);
  }
}
