// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:testcase/Custom/mediaQuari.dart';
import 'package:testcase/view/aibot.dart';
import 'package:testcase/view/home.dart';
import 'package:testcase/view/notification.dart';
import 'package:testcase/view/profile.dart';

class Bottomnavigation2 extends StatefulWidget {
  const Bottomnavigation2({super.key});

  @override
  State<Bottomnavigation2> createState() => _Bottomnavigation2State();
}

class _Bottomnavigation2State extends State<Bottomnavigation2> {
  int currentIndexValue = 0;
  List<Widget> screenList = [
    
    const HomeScreen(),
    const AibotScreen(),
    const ProfileScreen(),
    const NotificationScreen(),
   
  ];

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
    double h26 = Mediaquery.getFontSize26(context);
    double IW24 = Mediaquery.getImageSizeW24(context);
    double IH24 = Mediaquery.getImageSizeH24(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: screenList[currentIndexValue],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 22.0, right: 21, bottom: 20),
        child: Container(
          height: screenHeight * 0.06,
          decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color(0xFF272256),
          ),
          child: GNav(
            rippleColor: Colors.grey,
            hoverColor: Colors.grey,
            tabBorderRadius: 49,
            tabActiveBorder: Border.all(color: Colors.white, width: screenWidth * 0.0001 ),
            curve: Curves.easeOutExpo,
            duration: const Duration(milliseconds: 100),
            gap: screenWidth * 0.01,
            color: Colors.white,
            activeColor: const Color(0xFF6154D5),
            iconSize: h24,
            tabBackgroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 4),
            
            tabs: [
               GButton(
                icon: LineIcons.home,
                text: 'Home',
                textStyle: TextStyle(
                  fontSize: h14, 
                   color: const Color(0xFF6154D5), 
                ),
              ),
               GButton(
                icon: LineIcons.envelope,
                text: 'Chat',
                textStyle: TextStyle(
                  fontSize: h14, 
                   color: const Color(0xFF6154D5), 
                ),
              ),
               GButton(
                icon: LineIcons.user,
                text: 'Profile',
                textStyle: TextStyle(
                  fontSize: h14, 
                  color: const Color(0xFF6154D5), 
                ),
              ),
              GButton(
                icon: LineIcons.bell,
                textStyle: TextStyle(
                  fontSize: h14, 
                  color: const Color(0xFF6154D5), 
                ),
                text: 'Notification',
              ),
            ],
          
            onTabChange: (index) {
              setState(() {
                currentIndexValue = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
