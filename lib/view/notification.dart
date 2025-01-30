import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testcase/Custom/show_dialog.dart';
import 'package:testcase/view_model/user_view_model.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => NotificationScreenState();
}

class NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
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
        title: const Text(
          'Notifications',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: GestureDetector(
              onTap: () {
                showDialog(context: context, builder: (context)=>const LogOutDialog());
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
                const Padding(
                  padding: EdgeInsets.only(top: 40.0, left: 20),
                  child: Text(
                    'Today',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              const SizedBox(
                height: 15,
              ),
              //make a list
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/img_avtar.png',
                          height: 40,
                          width: 40,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              chatUser[index],
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF0A0816),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              width: 250,
                              child: Text(
                                chatMessages[index],
                                maxLines: 2,
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF6B678B)),
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
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF6B678B)),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const CircleAvatar(
                              radius: 8,
                              backgroundColor: Color(0xFF6154D5),
                            )
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


