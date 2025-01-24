import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onCall;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius borderRadius;
  final double padding;
  final double fontSize;
  final FontWeight fontWeight;
  final double? width;
  final double ?height;
  final double ?borderWidth;
  final Color?borderColor;
  final IconData? icon;
  final FocusNode ? focusNode;

  const CustomButton({
    super.key,
     this.width,
     this.height,
    required this.text,
    required this.onCall,
    required this.backgroundColor,
    required this.textColor,
    required this.borderRadius,
    required this.padding,
    required this.fontSize,
    required this.fontWeight,
     this.borderWidth,
     this.borderColor,
    this.icon,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: 
        onCall,
      child: Container(
        width:width ,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius:  borderRadius,
         border: Border.all(
                            color:borderColor ??const Color(0xFF6154D5)  ,
                            width: borderWidth??1
                          ),
        ),
        child: Padding(
          padding:  EdgeInsets.all(padding),
          child: Center(
              child: Text(
            text,
            style: TextStyle(
                fontWeight: fontWeight, fontSize: fontSize, color:textColor),
          )),
        ),
      ),
    );
  }
}
