import 'package:flutter/material.dart';
import 'package:mohammed_s_application3/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.prefixWidget,
      this.suffixWidget,
      this.text});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  Widget? prefixWidget;

  Widget? suffixWidget;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: getHorizontalSize(width ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            prefixWidget ?? SizedBox(),
            Text(
              text ?? "",
              textAlign: TextAlign.center,
              style: _setFontStyle(),
            ),
            suffixWidget ?? SizedBox(),
          ],
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll24:
        return getPadding(
          all: 24,
        );
      default:
        return getPadding(
          all: 21,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillDeeporange50063:
        return ColorConstant.deepOrange50063;
      case ButtonVariant.OutlineRedA40066:
        return ColorConstant.redA4000c;
      case ButtonVariant.FillDeeporange5005e:
        return ColorConstant.deepOrange5005e;
      case ButtonVariant.FillDeeppurpleA4005e:
        return ColorConstant.deepPurpleA4005e;
      default:
        return ColorConstant.lightBlue400;
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineRedA40066:
        return Border.all(
          color: ColorConstant.redA40066,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillLightblue400:
      case ButtonVariant.FillDeeporange50063:
      case ButtonVariant.FillDeeporange5005e:
      case ButtonVariant.FillDeeppurpleA4005e:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            14.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.PoppinsMedium14Deeporange500:
        return TextStyle(
          color: ColorConstant.deepOrange500,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.PoppinsSemiBold16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.PoppinsSemiBold16RedA40090:
        return TextStyle(
          color: ColorConstant.redA40090,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.PoppinsMedium12:
        return TextStyle(
          color: ColorConstant.deepOrange500,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.PoppinsMedium12DeeppurpleA400:
        return TextStyle(
          color: ColorConstant.deepPurpleA400,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder14,
}

enum ButtonPadding {
  PaddingAll21,
  PaddingAll24,
}

enum ButtonVariant {
  FillLightblue400,
  FillDeeporange50063,
  OutlineRedA40066,
  FillDeeporange5005e,
  FillDeeppurpleA4005e,
}

enum ButtonFontStyle {
  PoppinsMedium14,
  PoppinsMedium14Deeporange500,
  PoppinsSemiBold16,
  PoppinsSemiBold16RedA40090,
  PoppinsMedium12,
  PoppinsMedium12DeeppurpleA400,
}
