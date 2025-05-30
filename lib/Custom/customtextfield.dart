import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final int? maxLines;
  final String? hintText;
  final double? hintFontSize;
  final FontWeight? hintFontWeight;
  final Color? hintTextColor;
  final bool? filled;
  final Color? fillColor;
  final BorderRadius? enableBorderRadius;
  final Color? enableBorderColor;
  final double? enableBorderWidth;
  final BorderRadius? focusedBorderRadius;
  final Color? focusedBorderColor;
  final double? focusedBorderWidth;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final FocusNode ? focusNode;
  

  const CustomTextField({
    super.key,
    this.validator,
    this.controller,
    this.fontSize,
    this.fontWeight,
    this.textColor,
    this.maxLines,
    this.hintText,
    this.hintFontSize,
    this.hintFontWeight,
    this.hintTextColor,
    this.filled,
    this.fillColor,
    this.enableBorderRadius,
    this.enableBorderColor,
    this.enableBorderWidth,
    this.focusedBorderRadius,
    this.focusedBorderColor,
    this.focusedBorderWidth,
    this.focusNode, required Null Function(dynamic value) onFieldSubmitted,
    
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: textColor,
      ),
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: hintTextColor,
          fontSize: hintFontSize,
          fontWeight: hintFontWeight,
        ),
        filled: filled,
        fillColor: fillColor,
        enabledBorder: OutlineInputBorder(
          borderRadius: enableBorderRadius ?? BorderRadius.circular(8),
          borderSide: BorderSide(
            color: enableBorderColor ?? const Color(0xFFE3E5E5),
            width: enableBorderWidth ?? 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: focusedBorderRadius ?? BorderRadius.circular(8),
          borderSide: BorderSide(
            color: focusedBorderColor ?? const Color(0xFFE3E5E5),
            width: focusedBorderWidth ?? 1.0,
          ),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
      ),
    );
  }
}
