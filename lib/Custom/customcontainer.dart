import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {

  final String ?image;
  final Color ?imageColor;
  final String ?text;
  final double? fontSize;
  final FontWeight ?fontWeight;
  final Color ? textColor;
  final BorderRadius ?borderRadius;
  final double ?width;
  final double?height;
  final Color?contaierColor;
  final double?verticalpadding;
  final double?horizontalPadding;
  final double?sizedBoxW;
  final double?sizedBoxH;


  

   const CustomContainer({
    super.key,
    this.image,
    this.imageColor,
    this.text,
    this.fontSize,
    this.fontWeight,
    this.textColor,
    this.borderRadius,
    this.width,
    this.height,
    this.contaierColor,
    this.horizontalPadding,
    this.verticalpadding,
    this.sizedBoxW,
    this.sizedBoxH,
    

  });

  @override
  Widget build(BuildContext context) {
    return Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: contaierColor,
                        borderRadius: borderRadius,
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: sizedBoxW,height: sizedBoxH,),
                          Image.asset(image!,color: imageColor),
                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: horizontalPadding??22.7,vertical: verticalpadding??22.7),
                              child: Text(text!,style: TextStyle(fontSize: fontSize, fontWeight: fontWeight,color:  textColor ,
                                                        )),
                            )
                        ],
                      ),
                    );
  }
}