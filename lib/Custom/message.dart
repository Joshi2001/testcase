// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:testcase/Custom/mediaQuari.dart';

class Message {
  bool isUser;
  String message;
  DateTime time;

  Message({required this.isUser, required this.message, required this.time});
}

class Messages extends StatelessWidget {
  final bool isUser;
  final String message;
  final String time;

  const Messages(
      {super.key,
      required this.isUser,
      required this.message,
      required this.time});

  @override
  Widget build(BuildContext context) {
     double screenWidth = Mediaquery.getScreenWidth(context);
    double screenHeight = Mediaquery.getScreenHeight(context);
    double h10 = Mediaquery.getFontSize10(context);
    double h12 = Mediaquery.getFontSize12(context);
    double h14 = Mediaquery.getFontSize14(context);
    double h16 = Mediaquery.getFontSize16(context);
    double h18 = Mediaquery.getFontSize18(context);
    double h20 = Mediaquery.getFontSize20(context);
    double h22 = Mediaquery.getFontSize22(context);
    double h24 = Mediaquery.getFontSize24(context);
    return Column(
      crossAxisAlignment: isUser == true
          ? CrossAxisAlignment.end
          : CrossAxisAlignment.start,
      children: [
        if (isUser == false)
          Padding(
            padding: const EdgeInsets.only(left: 5.0, top: 7.5, bottom: 7.5),
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.6,
              ),
              decoration: const BoxDecoration(
                color: Color(0xFFEFEEFB),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 20.0, bottom: 12.0, right: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: Text(
                        message,
                        style:  TextStyle(
                            fontSize: h14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF0A0816)),
                        textAlign: TextAlign.start,
                      ),
                    ),
                     SizedBox(height:screenHeight*0.01 ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        time,
                        textAlign: TextAlign.end,
                        style:  TextStyle(
                            fontSize: h10,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF6B678B)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        if (isUser == true)
          Padding(
            padding: const EdgeInsets.only(top : 7.5,bottom: 7.5,right: 5.0),
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.6,
              ),
              decoration: const BoxDecoration(
                color: Color(0xFF272256),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                  bottomLeft: Radius.circular(24),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      message,
                      style:  TextStyle(
                        fontSize: h14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                     SizedBox(height:screenHeight*0.01 ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        time,
                        style:  TextStyle(
                          fontSize: h10,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
