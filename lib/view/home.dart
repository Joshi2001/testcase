// ignore_for_file: unrelated_type_equality_checks, deprecated_member_use, unused_local_variable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testcase/Custom/mediaQuari.dart';
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
    double IW40 = Mediaquery.getImageSizeW40(context);
    double IH40 = Mediaquery.getImageSizeH40(context);

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
          title:  Text(
            'Home',
            style: TextStyle(fontSize: h18, fontWeight: FontWeight.w500),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const DashboardScreen()));
                  },
                  child: Image.asset('assets/ic_chatmessage.png',width: IW40,height: IH40,)),
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
                            SizedBox(
                              height: screenHeight*0.002,
                            ),
                            Row(
                              children: [
                                 SizedBox(
                                  width: screenWidth*0.025,
                                ),
                                CircleAvatar(
                                  radius: 23,
                                  backgroundImage:
                                      NetworkImage(chat.image.toString()),
                                ),
                                 SizedBox(
                                  width: screenWidth*0.025,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      child: Text(
                                        chat.category ?? "".toString(),
                                        style: TextStyle(
                                          fontSize: h14,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xFF0A0816),
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
                                        style:  TextStyle(
                                            fontSize: h14,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xFF6B678B)),
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
                                  style:  TextStyle(
                                    fontSize: h12,
                                    fontWeight: FontWeight.w500,
                                  )),
                            ),
                            const Divider(),
                            SizedBox(
                              height: screenHeight*0.002,
                            ),
                            
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


