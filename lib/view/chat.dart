
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import '../respository/socket_respository.dart';


class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
 
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (_)=>SocketRespository(context),
    child:Scaffold(
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
            GestureDetector(
              onTap: () {
                 Navigator.of(context).pop();
              },
              child: Image.asset(
                'assets/ic_back.png',
                width: 6,
                height: 12,
              ),
            ),
            const SizedBox(width: 9.5),
            Image.asset(
              'assets/img_avtar.png',
              height: 31,
              width: 31,
            ),
            const SizedBox(width: 10),
            const Text(
              'Fit Bot',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Image.asset('assets/ic_threedot.png'),
          ),
        ],
      ),
      body: Consumer<SocketRespository>(builder: (context,socketRespository,child){
      return Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: socketRespository.messages.length,
              itemBuilder: (context, index) {
                 final message = socketRespository.messages[index];
                 final formattedTime = DateFormat('HH:mm').format(message.timestamp);
                return Padding(
                  padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset('assets/img_avtar.png'),
                      const SizedBox(width: 8),
                      Container(
                         constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.7,),
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
                              top: 15.0, left: 20.0, bottom: 32.0, right: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                child: Text(
                                 message.text,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF0A0816)
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  formattedTime,
                                  textAlign: TextAlign.end,
                                  style: const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF6B678B)
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24.0,left: 24.0,bottom: 24.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                     constraints: const BoxConstraints(
                      minHeight: 48.0, 
                        maxHeight: 90.0, 
                        ),
                    child: TextField(
                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.black),
                      controller: _messageController,
                       maxLines: null,
                       onSubmitted: (text) {
                         socketRespository.sendMessage(text);
                         _messageController.clear();
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
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () {
                    socketRespository.sendMessage(_messageController.text);
                          _messageController.clear();
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
      );
  })
  ));}
    
     
  }

