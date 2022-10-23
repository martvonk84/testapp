import 'controller/work_today_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application3/core/app_export.dart';
import 'package:mohammed_s_application3/widgets/custom_button.dart';
import 'package:mohammed_s_application3/widgets/custom_icon_button.dart';

class WorkTodayScreen extends GetWidget<WorkTodayController> {
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
                          margin: getMargin(left: 32, top: 43, right: 32),
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
                          padding: getPadding(left: 32, top: 50, right: 32),
                          child: Text("lbl_work_today_s".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold28
                                  .copyWith(height: 1.00))),
                      Padding(
                          padding: getPadding(left: 32, top: 16, right: 32),
                          child: Text("msg_make_your_job_e".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium12.copyWith(
                                  letterSpacing: 0.12, height: 1.00))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 32, top: 79, right: 32),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 9, bottom: 4),
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
                                                  child: Text("lbl_today".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium14)),
                                              Padding(
                                                  padding: getPadding(top: 10),
                                                  child: Text(
                                                      "lbl_02_april_2021".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsSemiBold16))
                                            ])),
                                    CustomIconButton(
                                        height: 58,
                                        width: 60,
                                        variant:
                                            IconButtonVariant.FillTeal4005e,
                                        padding: IconButtonPadding.PaddingAll19,
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgCalendar))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(left: 32, top: 59, right: 32),
                              decoration: AppDecoration.fillWhiteA7007e,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                        height: getVerticalSize(26.00),
                                        width: getHorizontalSize(28.00),
                                        margin: getMargin(top: 15, bottom: 15),
                                        decoration: BoxDecoration(
                                            color:
                                                ColorConstant.deepOrange5006c,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(6.00)))),
                                    Padding(
                                        padding: getPadding(
                                            left: 24, top: 21, bottom: 21),
                                        child: Text("msg_research_produc".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsRegular14)),
                                    Padding(
                                        padding: getPadding(
                                            left: 29, top: 25, bottom: 25),
                                        child: CommonImageView(
                                            svgPath:
                                                ImageConstant.imgArrowright,
                                            height: getVerticalSize(5.00),
                                            width: getHorizontalSize(3.00)))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(left: 32, top: 5, right: 32),
                              decoration: AppDecoration.fillWhiteA7007e,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 28, top: 15, bottom: 15),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                  height:
                                                      getVerticalSize(26.00),
                                                  width:
                                                      getHorizontalSize(28.00),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .deepOrange5006c,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  6.00)))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 13,
                                                      top: 9,
                                                      bottom: 3),
                                                  child: Text(
                                                      "msg_create_action_p".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular14))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            top: 25, right: 27, bottom: 25),
                                        child: CommonImageView(
                                            svgPath:
                                                ImageConstant.imgArrowright,
                                            height: getVerticalSize(5.00),
                                            width: getHorizontalSize(3.00)))
                                  ]))),
                      CustomButton(
                          width: 311,
                          text: "msg_make_a_wish_lis".tr,
                          margin: getMargin(
                              left: 32, top: 63, right: 32, bottom: 20),
                          fontStyle: ButtonFontStyle.PoppinsSemiBold16,
                          onTap: onTapBtnMakeawishlis,
                          alignment: Alignment.center)
                    ])))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapBtnMakeawishlis() {
    Get.toNamed(AppRoutes.wishListScreen);
  }
}
