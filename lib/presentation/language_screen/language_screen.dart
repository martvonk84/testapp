import 'controller/language_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application3/core/app_export.dart';
import 'package:mohammed_s_application3/widgets/custom_button.dart';
import 'package:mohammed_s_application3/widgets/custom_icon_button.dart';

class LanguageScreen extends GetWidget<LanguageController> {
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
                      CustomIconButton(
                          height: 60,
                          width: 60,
                          margin: getMargin(left: 32, top: 52, right: 32),
                          onTap: () {
                            onTapBtntf();
                          },
                          child: CommonImageView(
                              svgPath: ImageConstant.imgArrowleftGray900)),
                      Padding(
                          padding: getPadding(left: 32, top: 44, right: 32),
                          child: Text("lbl_language".tr,
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
                      CustomButton(
                          width: 311,
                          text: "lbl_indonesian".tr,
                          margin: getMargin(left: 32, top: 87, right: 32),
                          variant: ButtonVariant.FillDeeporange5005e,
                          padding: ButtonPadding.PaddingAll24,
                          fontStyle: ButtonFontStyle.PoppinsMedium12,
                          alignment: Alignment.center),
                      CustomButton(
                          width: 311,
                          text: "lbl_english".tr,
                          margin: getMargin(left: 32, top: 14, right: 32),
                          variant: ButtonVariant.FillDeeppurpleA4005e,
                          padding: ButtonPadding.PaddingAll24,
                          fontStyle:
                              ButtonFontStyle.PoppinsMedium12DeeppurpleA400,
                          alignment: Alignment.center),
                      CustomButton(
                          width: 311,
                          text: "lbl_save".tr,
                          margin: getMargin(
                              left: 32, top: 243, right: 32, bottom: 20),
                          fontStyle: ButtonFontStyle.PoppinsSemiBold16,
                          alignment: Alignment.center)
                    ])))));
  }

  onTapBtntf() {
    Get.back();
  }
}
