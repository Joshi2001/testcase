// ignore_for_file: unused_local_variable

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:testcase/Custom/mediaQuari.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:testcase/Custom/show_dialog.dart';
import '../Custom/message.dart';

class AibotScreen extends StatefulWidget {
  const AibotScreen({super.key});

  @override
  State<AibotScreen> createState() => _AibotScreenState();
}

class _AibotScreenState extends State<AibotScreen> {
  final TextEditingController _messageController = TextEditingController();
  final apiKey = "AIzaSyDi3v3InchsmYrwQiE-Ozsbi3tgN3Bas9s";
  final List<Message> _message = [];
void _clearChat() {
    setState(() {
      _message.clear();
    });
  }

  Future<void> talkWithGemine() async {
    final userMsg = _messageController.text;
 if (userMsg.isEmpty) return;
    setState(() {
      _message.add(Message(
        isUser: true,
        message: userMsg,
        time: DateTime.now(),
      ));
    });

    final model = GenerativeModel(model: "gemini-pro", apiKey: apiKey);
    final content = Content.text(userMsg);
    final response = await model.generateContent([content]);

    setState(() {
      _message.add(Message(
        isUser: false,
        message: response.text ?? "",
        time: DateTime.now(),
      ));
      _messageController.clear();
    });
   
    if (kDebugMode) {
      print(response.text);
    }
  }
   @override
  void dispose() {
   _messageController.dispose();
    super.dispose();
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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        shape: Border(
          bottom: BorderSide(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.1),
            width: screenWidth*0.002,
          ),
        ),
        title: Row(
          children: [
             SizedBox(width: screenWidth * 0.01),
            Image.asset(
              'assets/img_avtar.png',
            ),
            SizedBox(width: screenWidth * 0.02),
             Text(
              'Fit Bot',
              style: TextStyle(fontSize: h18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: GestureDetector(onTap: ()async {
              final result =  await showDialog(context: context, builder: (context)=> DialogBox(fontSize:h16 ,title: "Are you sure you want clear chat",cancelText:"Cancle",okText:" clear chat",dialogColor: const Color(0xFF272256),cancelButtonColor: Colors.white,logoutButtonColor: const Color(0xFF6154D5),borderRadius: 20,padding: 20));
                if (result == true) {
                  _clearChat();
                }
            },
              child: Image.asset('assets/ic_threedot.png')),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemBuilder: (context, index) {
                  final message = _message[index];
                  return Messages(
                    isUser: message.isUser,
                    message: message.message,
                    time: DateFormat('HH:mm').format(message.time),
                  );
                },
                itemCount: _message.length),
          ),
          Padding(
            padding:
                const EdgeInsets.only(right: 24.0, left: 24.0, bottom: 24.0),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top :5.0),
                    child: Container(
                      constraints: const BoxConstraints(
                        minHeight: 48.0,
                        maxHeight: 90.0,
                      ),
                      child: TextField(
                        style:  TextStyle(
                            fontSize: h14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                        controller: _messageController,
                        maxLines: null,
                        keyboardType: TextInputType.multiline,
                        onSubmitted: (text) {
                          talkWithGemine();
                          if(_messageController.text.isNotEmpty){
                            _messageController.clear();
                          }
                        },
                        decoration: InputDecoration(
                          hintText: 'Type your message...',
                          hintStyle:  TextStyle(
                              fontSize: h14,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF6B678B)),
                          filled: true,
                          fillColor: const Color(0xFFF5F5F5),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 20.0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: screenWidth * 0.02),
                GestureDetector(
                  onTap: () {
                    talkWithGemine();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                      color: Color(0xFF6154D5),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
