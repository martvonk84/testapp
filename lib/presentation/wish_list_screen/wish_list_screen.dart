import 'controller/wish_list_controller.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application3/core/app_export.dart';
import 'package:mohammed_s_application3/widgets/custom_button.dart';
import 'package:mohammed_s_application3/widgets/custom_text_form_field.dart';

class WishListScreen extends GetWidget<WishListController> {
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
                          margin: getMargin(left: 32, top: 42, right: 32),
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
                          padding: getPadding(left: 32, top: 47, right: 32),
                          child: Text("msg_make_a_wish_lis".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold28
                                  .copyWith(height: 1.00))),
                      Padding(
                          padding: getPadding(left: 32, top: 21, right: 32),
                          child: Text("msg_make_your_job_e".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium12.copyWith(
                                  letterSpacing: 0.12, height: 1.00))),
                      Padding(
                          padding: getPadding(left: 32, top: 89, right: 32),
                          child: Text("lbl_task_todo".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium12Gray9008b
                                  .copyWith(
                                      letterSpacing: 0.12, height: 1.00))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(left: 32, top: 15, right: 32),
                              decoration: AppDecoration.outlineGray9005e
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder14),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding:
                                            getPadding(top: 19, bottom: 19),
                                        child: CommonImageView(
                                            svgPath:
                                                ImageConstant.imgCalendar19X18,
                                            height: getVerticalSize(19.00),
                                            width: getHorizontalSize(18.00))),
                                    Padding(
                                        padding: getPadding(
                                            left: 21, top: 22, bottom: 22),
                                        child: Text("msg_create_action_m".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsMedium14Gray90090))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 32, top: 21, right: 32),
                          child: Text("lbl_date".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium12Gray9008b
                                  .copyWith(
                                      letterSpacing: 0.12, height: 1.00))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(left: 32, top: 15, right: 32),
                              decoration: AppDecoration.outlineGray9005e
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder14),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding:
                                            getPadding(top: 19, bottom: 19),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgCalendar,
                                            height: getVerticalSize(19.00),
                                            width: getHorizontalSize(18.00))),
                                    Padding(
                                        padding: getPadding(
                                            left: 21, top: 19, bottom: 18),
                                        child: Text("lbl_tt_mm_yy".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsMedium14Gray90090))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 32, top: 21, right: 32),
                          child: Text("lbl_attachments".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium12Gray9008b
                                  .copyWith(
                                      letterSpacing: 0.12, height: 1.00))),
                      Padding(
                          padding: getPadding(left: 32, top: 15, right: 32),
                          child: DottedBorder(
                              color: ColorConstant.gray9006c,
                              padding: EdgeInsets.only(
                                  left: getHorizontalSize(1.00),
                                  top: getVerticalSize(1.00),
                                  right: getHorizontalSize(1.00),
                                  bottom: getVerticalSize(1.00)),
                              strokeWidth: getHorizontalSize(1.00),
                              radius: Radius.circular(14),
                              borderType: BorderType.RRect,
                              dashPattern: [5, 2],
                              child: CustomTextFormField(
                                  width: 311,
                                  focusNode: FocusNode(),
                                  controller: controller.filesizeController,
                                  hintText: "lbl_maximum_10_mb".tr,
                                  variant:
                                      TextFormFieldVariant.OutlineGray9006c,
                                  shape: TextFormFieldShape.RoundedBorder14,
                                  fontStyle: TextFormFieldFontStyle
                                      .PoppinsMedium14Gray90090,
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.center,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 21,
                                          top: 19,
                                          right: 21,
                                          bottom: 19),
                                      child: CommonImageView(
                                          svgPath:
                                              ImageConstant.imgTelevision)),
                                  prefixConstraints: BoxConstraints(
                                      minWidth: getSize(19.00),
                                      minHeight: getSize(19.00))))),
                      CustomButton(
                          width: 311,
                          text: "msg_make_a_wish_lis".tr,
                          margin: getMargin(
                              left: 32, top: 35, right: 32, bottom: 20),
                          fontStyle: ButtonFontStyle.PoppinsSemiBold16,
                          alignment: Alignment.center)
                    ])))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
