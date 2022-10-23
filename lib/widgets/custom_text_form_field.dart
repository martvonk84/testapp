import 'package:flutter/material.dart';
import 'package:mohammed_s_application3/core/app_export.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: getHorizontalSize(width ?? 0),
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.PoppinsMedium14Gray900a2:
        return TextStyle(
          color: ColorConstant.gray900A2,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      case TextFormFieldFontStyle.PoppinsMedium14Gray90090:
        return TextStyle(
          color: ColorConstant.gray90090,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      default:
        return TextStyle(
          color: ColorConstant.gray9007e,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case TextFormFieldShape.RoundedBorder14:
        return BorderRadius.circular(
          getHorizontalSize(
            14.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray9005e:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray9005e,
            width: 1,
          ),
        );
      case TextFormFieldVariant.OutlineGray9006c:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray90063,
            width: 1,
          ),
        );
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray9005e:
        return false;
      case TextFormFieldVariant.OutlineGray90063:
        return false;
      case TextFormFieldVariant.OutlineGray9006c:
        return false;
      default:
        return false;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingT23_1:
        return getPadding(
          left: 19,
          top: 23,
          right: 19,
          bottom: 19,
        );
      default:
        return getPadding(
          left: 22,
          top: 23,
          right: 22,
          bottom: 22,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder10,
  RoundedBorder14,
}

enum TextFormFieldPadding {
  PaddingT23,
  PaddingT23_1,
}

enum TextFormFieldVariant {
  OutlineGray9005e,
  OutlineGray90063,
  OutlineGray9006c,
}

enum TextFormFieldFontStyle {
  PoppinsMedium14Gray900a2,
  PoppinsMedium14,
  PoppinsMedium14Gray90090,
}
