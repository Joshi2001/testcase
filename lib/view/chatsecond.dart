
import 'package:flutter/material.dart';

class Chatsecond extends StatefulWidget {
  const Chatsecond({super.key});

  @override
  State<Chatsecond> createState() => _ChatsecondState();
}

class _ChatsecondState extends State<Chatsecond> {
  List<String> fullMessage = ["Wow! This is nice, Thanks", ];
  List<String> fullMessage2 = ["Okay, Thank you."];
  List<String> time2 = ["08:00AM", "08:00AM","08:01AM"];
  List<String> fullMess = [
    "You’re welcome Susan",
    "Remember to stay hydrated \nthroughout the day and maintain\n a balanced diet.\n Enjoy your meals and workouts! If\n you have any questions or need\n modifications, feel free to ask.",
    "Remember to stay hydrated \nthroughout the day and maintain\n a balanced diet.\n Enjoy your meals and workouts! If\n you have any questions or need\n modifications, feel free to ask."
  ];
  List<String> time = ["08:00AM", "08:01AM"];
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 30),
        child: Column(
          children: [
            Column(
              children: [
                // First Message Block
                Flexible(
                  fit: FlexFit.loose,
                  child: ListView.builder(
                    shrinkWrap: true, 
                    physics: const NeverScrollableScrollPhysics(), 
                    itemCount: fullMessage.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 15.0, bottom: 32.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                               constraints: BoxConstraints(
                                maxWidth: MediaQuery.of(context).size.width * 0.7,),
                              decoration: const BoxDecoration(
                                color: Color(0xFF272256),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(24),
                                  topRight: Radius.circular(24),
                                  bottomLeft: Radius.circular(24),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      fullMessage[index],
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        time2[index],
                                        style: const TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
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
                // Second Message Block
                Flexible(
                  fit: FlexFit.loose,
                  child: ListView.builder(
                    shrinkWrap: true, 
                    physics: const NeverScrollableScrollPhysics(), 
                    itemCount: fullMess.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 30.0),
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
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      fullMess[index],
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        time[index],
                                        style: const TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
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
                // Third Message Block
                Flexible(
                  fit: FlexFit.loose,
                  child: ListView.builder(
                    shrinkWrap: true, // Added shrinkWrap
                    physics: const NeverScrollableScrollPhysics(), // Disable scrolling
                    itemCount: fullMessage2.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                            constraints: BoxConstraints(
                                  maxWidth: MediaQuery.of(context).size.width * 0.7,),
                              decoration: const BoxDecoration(
                                color: Color(0xFF272256),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(24),
                                  topRight: Radius.circular(24),
                                  bottomLeft: Radius.circular(24),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      fullMessage2[index],
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        time2[index],
                                        style: const TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
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
               
              ],
            ),
            const Spacer(),
            Row(
                    children: [
                      Expanded(
                        child: Container(
                            constraints: const BoxConstraints(
                              minHeight: 48.0, 
                               maxHeight: 90.0, 
                            ),
                          child: TextField(
                            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                            controller: _messageController,
                            maxLines: null,
                            decoration: InputDecoration(
                              hintText: 'Type your message...',
                              filled: true,
                              fillColor: const Color(0xFFF5F5F5),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                                borderSide: BorderSide.none,
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const Chatsecond(),
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10), // Adjusted padding
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
          ],
        ),
      ),
    );
  }
}
