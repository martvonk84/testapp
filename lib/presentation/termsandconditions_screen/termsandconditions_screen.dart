import 'controller/termsandconditions_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application3/core/app_export.dart';
import 'package:mohammed_s_application3/widgets/custom_icon_button.dart';

class TermsandconditionsScreen extends GetWidget<TermsandconditionsController> {
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
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      CustomIconButton(
                          height: 60,
                          width: 60,
                          margin: getMargin(left: 32, top: 59, right: 32),
                          onTap: () {
                            onTapBtntf();
                          },
                          child: CommonImageView(
                              svgPath: ImageConstant.imgArrowleftGray900)),
                      Container(
                          width: getHorizontalSize(153.00),
                          margin: getMargin(left: 32, top: 36, right: 32),
                          child: Text("msg_terms_and_condi".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold28
                                  .copyWith(height: 1.36))),
                      Container(
                          width: getHorizontalSize(284.00),
                          margin: getMargin(
                              left: 32, top: 75, right: 32, bottom: 20),
                          child: Text("msg_lorem_ipsum_dol2".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12Gray900a2
                                  .copyWith(letterSpacing: 0.24, height: 2.00)))
                    ])))));
  }

  onTapBtntf() {
    Get.back();
  }
}
