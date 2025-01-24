import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:testcase/view/chat.dart';
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
    const ChatScreen(),
    const ProfileScreen(),
    const NotificationScreen(),
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screenList[currentIndexValue],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 22.0, right: 21, bottom: 20),
        child: Container(
          height: 62,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color(0xFF272256),
          ),
          child: GNav(
            rippleColor: Colors.grey,
            hoverColor: Colors.grey,
            tabBorderRadius: 49,
            tabActiveBorder: Border.all(color: Colors.white, width: 1),
            curve: Curves.easeOutExpo,
            duration: const Duration(milliseconds: 100),
            gap: 8,
            color: Colors.white,
            activeColor: const Color(0xFF6154D5),
            iconSize: 24,
            tabBackgroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            
            // Tabs for the navigation
            tabs: const [
              GButton(
                icon: LineIcons.home,
                text: 'Home',
              ),
              GButton(
                icon: LineIcons.envelope,
                text: 'Chat',
              ),
              GButton(
                icon: LineIcons.user,
                text: 'Profile',
              ),
              GButton(
                icon: LineIcons.bell,
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
