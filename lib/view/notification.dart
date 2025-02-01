// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testcase/Custom/mediaQuari.dart';
import 'package:testcase/Custom/show_dialog.dart';
import 'package:testcase/view/auth/login.dart';
import 'package:testcase/view_model/user_view_model.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => NotificationScreenState();
}

class NotificationScreenState extends State<NotificationScreen> {
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
    double h28 = Mediaquery.getFontSize28(context);
    double h30 = Mediaquery.getFontSize30(context);
    double h32 = Mediaquery.getFontSize32(context);
    double h34 = Mediaquery.getFontSize34(context);
    double h36 = Mediaquery.getFontSize36(context);
    double h38 = Mediaquery.getFontSize38(context);
    double h40 = Mediaquery.getFontSize40(context);
    double h42 = Mediaquery.getFontSize42(context);
    double h44 = Mediaquery.getFontSize44(context);
     
    Provider.of<UserViewModel>(context);
    List<String> chatUser = [
      "Fit Bot",
      "Fit Bot2",
      "Fit Bot2",
      "Fit Bot3",
      "Fit Bot3"
    ];
    List<String> chatMessages = [
      "Torem ipsum dolor sit amet, consectetur aaaaaa...",
      "Torem ipsum dolor sit amet, consectetur aaaaa...",
      "Torem ipsum dolor sit amet, consectetur aaaa...",
      "Torem ipsum dolor sit amet, consectetur aaa...",
      "Torem ipsum dolor sit amet, consectetur aa..."
    ];
    List<String> time = [
      "Now",
      "Now",
      "13:30",
      "12:30",
      "12:30",
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shape: Border(
            bottom: BorderSide(
          color: Colors.black.withOpacity(0.1),
          width: 1.0,
        )),
        automaticallyImplyLeading: false,
        title:  Text(
          'Notifications',
          style: TextStyle(fontSize: h18, fontWeight: FontWeight.w500),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: GestureDetector(
              onTap: () {
                showDialog(context: context, builder: (context)=>DialogBox(fontSize : h16 ,title: "Are you sure you want to log out?",cancelText:"Cancle",okText:"Log Out",dialogColor: const Color(0xFF272256),cancelButtonColor: Colors.white,logoutButtonColor: const Color(0xFF6154D5),borderRadius: 20,padding: 20,navigator: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LogIn(),));
                },));
              },
              child: Image.asset('assets/ic_threedot.png')),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: chatUser.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (index == 0)
                 Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 20),
                  child: Text(
                    'Today',
                    style: TextStyle(fontSize: h16, fontWeight: FontWeight.w600),
                  ),
                ),
               SizedBox(
                height: screenHeight * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/img_avtar.png',
                          // height: IH24,
                          // width: IW24,
                        ),
                         SizedBox(
                          width: screenWidth * 0.02,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              chatUser[index],
                              style:  TextStyle(
                                fontSize: h14,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF0A0816),
                              ),
                            ),
                             SizedBox(
                              height: screenHeight * 0.004,
                            ),
                            SizedBox(
                              width: screenWidth * 0.7,
                              child: Text(
                                chatMessages[index],
                                maxLines: 2,
                                style:  TextStyle(
                                    fontSize: h12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF6B678B)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              time[index],
                              style:  TextStyle(
                                  fontSize: h12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xFF6B678B)),
                            ),
                             SizedBox(
                              height: screenHeight*0.01,
                            ),
                            // const CircleAvatar(
                            //   radius: 8,
                            //   backgroundColor: Color(0xFF6154D5),
                            // )
                          ],
                        ),
                      ],
                    ),
                    const Divider()
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}


