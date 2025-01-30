// ignore_for_file: unrelated_type_equality_checks, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testcase/data/response/status.dart';
import 'package:testcase/view/dashboard.dart';
import 'package:testcase/view/detailScreen.dart';
import 'package:testcase/view_model/chat_view_model.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  ChatViewModel chatViewModel = ChatViewModel();

  @override
  void initState() {
    chatViewModel.chatListApi();
    super.initState();
  }
  

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // ignore: unused_local_variable
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Image.asset('assets/ic_back.png')),
          backgroundColor: Colors.white,
          shape: Border(
              bottom: BorderSide(
            color: Colors.black.withOpacity(0.1),
            width: 1.0,
          )),
          title: const Text(
            
            'Home',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const DashboardScreen()));
                  },
                  child: Image.asset('assets/ic_chatmessage.png')),
            ),
          ],
        ),
        body: ChangeNotifierProvider<ChatViewModel>(
          create: (BuildContext context) => chatViewModel,
          child: Consumer<ChatViewModel>(builder: (context, value, _) {
            switch (value.chatList.status) {
              case Status.LOADING:
                return const Center(child: CircularProgressIndicator());
              case Status.ERROR:
                return Center(
                  child: Text(
                    value.chatList.message?.toString() ??
                        'Something went wrong.',
                  ),
                );
              case Status.COMPLETED:
                final chatData = value.chatList.data ?? [];
                if (chatData == "") {
                  return const Center(child: Text('No Data available.'));
                }
                return ListView.builder(
                    itemCount: chatData.length,
                    itemBuilder: (context, index) {
                      final chat = chatData[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                     DetailScreen(chatModel: chat)));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                CircleAvatar(
                                  radius: 23,
                                   
                                  backgroundImage:
                                      NetworkImage(chat.image.toString()),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      child: Text(
                                        chat.category ?? "".toString(),
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF0A0816),
                                        ),
                                        maxLines: 2,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.6,
                                      child: Text(
                                        chat.description ?? "".toString(),
                                        maxLines: 1,
                                        style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF6B678B)),
                                      ),
                                    )
                                  ],
                                ),
                                const Spacer(),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(chat.rating?.rate.toString() ?? "",
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  )),
                            ),
                            const Divider()
                          ],
                        ),
                      );
                    });

              case null:
                return const SizedBox.shrink();
            }
          }),
        ));
  }
}


