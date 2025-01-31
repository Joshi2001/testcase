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
    const msg = "Hello";
    final content = Content.text(userMsg);
    final response = await model.generateContent([content]);
    setState(() {
      _message.add(Message(
        isUser: false,
        message: response.text ?? "",
        time: DateTime.now(),
      ));
    });
     _messageController.clear();
    if (kDebugMode) {
      print(response.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = Mediaquari.getScreenWidth(context);
    double screenHeight = Mediaquari.getScreenHeight(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        shape: Border(
          bottom: BorderSide(
            color: Colors.black.withOpacity(0.1),
            width: 1.0,
          ),
        ),
        title: Row(
          children: [
            SizedBox(width: screenWidth * 0.01),
            Image.asset(
              'assets/img_avtar.png',
              height: screenWidth * 0.1,
              width: screenWidth * 0.1,
            ),
            SizedBox(width: screenWidth * 0.04),
            const Text(
              'Fit Bot',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: GestureDetector(onTap: ()async {
              final result =  await showDialog(context: context, builder: (context)=>const DialogBox(title: "Are you sure you want clear chat",cancelText:"Cancle",okText:" clear chat",dialogColor: Color(0xFF272256),cancelButtonColor: Colors.white,logoutButtonColor: Color(0xFF6154D5),borderRadius: 20,padding: 20));
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
                    padding: const EdgeInsets.only(top :10.0),
                    child: Container(
                      constraints: const BoxConstraints(
                        minHeight: 48.0,
                        maxHeight: 90.0,
                      ),
                      child: TextField(
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                        controller: _messageController,
                        maxLines: null,
                        keyboardType: TextInputType.multiline,
                        onSubmitted: (text) {
                          talkWithGemine();
                        },
                        decoration: InputDecoration(
                          hintText: 'Type your message...',
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
