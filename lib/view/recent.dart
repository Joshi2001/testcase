import 'package:flutter/material.dart';

class RecentScreen extends StatefulWidget {
  const RecentScreen({super.key});

  @override
  State<RecentScreen> createState() => _RecentScreenState();
}

class _RecentScreenState extends State<RecentScreen> {
  List<String> chatUser = [
    "assets/img_recent.png",
    "assets/img_recent.png",
    "assets/img_recent.png",
    "assets/img_recent.png"
  ];

  List<String> timePhoto = [
    "5min read",
    "6min read",
    "5:23min read",
    "5:55min read"
  ];
  List<String> popular = [
    "assets/img_popular.png",
    "assets/img_popular2.png",
    "assets/img_popular.png",
    "assets/img_popular2.png",
  ];

  List<String> category = [
    "Category",
    "Category",
    "Category",
    "Category"
  ];

  List<String> time = [
    "1:05min read",
    "6:02min read",
    "8:23min read",
    "10:55min read"
  ];

  List<String> title = [
    "This is a blog title",
    "This is a blog title",
    "This is a blog title",
    "This is a blog title"
  ];

  List<String> subTitle = [
    "Torem ipsum dolor sit amet,\n consectetur alertyim adipiscing elit.",
    "Torem ipsum dolor sit amet,\n consectetur alertyim adipiscing elit.",
    "Torem ipsum dolor sit amet,\n consectetur alertyim adipiscing elit.",
    "Torem ipsum dolor sit amet,\n consectetur alertyim adipiscing elit."
  ];

  bool isSearchEnabled = false;
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    searchController.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {}, child: Image.asset('assets/ic_back.png')),
        backgroundColor: Colors.white,
        shape: Border(
            bottom: BorderSide(
          color: Colors.black.withOpacity(0.1),
          width: 1.0,
        )),
        title: isSearchEnabled
            ? TextField(
                controller: searchController,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: 'Search Blogs',
                  hintStyle: const TextStyle(
                    color: Color(0xFF0A0816),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  suffix: GestureDetector(
                    onTap: () {
                      setState(() {
                        isSearchEnabled = false;
                      });
                    },
                    child: Image.asset("assets/ic_close.png"),
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 255, 254, 254),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Color(0xFFE3E5E5),
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Color(0xFFE3E5E5),
                      width: 1,
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 20.0),
                ),
              )
            : const Text(
                'Daily Health Blog',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                isSearchEnabled = true;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Image.asset('assets/ic_search.png'),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24.0,),
        child: Column(
          children: [
            const SizedBox(
              height: 27,
            ),
            const Padding(
              padding: EdgeInsets.only( right: 24.0),
              child: Row(
                children: [
                  Text(
                    "Recent",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Spacer(),
                  Text(
                    "View all",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF6154d5)),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 312,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: chatUser.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                child: Image.asset("assets/img_recent.png"))),
                        Positioned(
                            right: 40,
                            top: 20,
                            child: Image.asset("assets/ic_share.png")),
                        Positioned(
                            right: 90,
                            top: 20,
                            child: Image.asset("assets/ic_bookmark.png")),
                        Positioned(
                            left: 30,
                            top: 20,
                            child: Text(
                              timePhoto[index],
                              style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFEFEEFB)),
                            )),
                      ],
                    );
                  }),
            ),
            const SizedBox(
              height: 27,
            ),
            const Padding(
             padding: EdgeInsets.only( right: 24.0),
              child: Row(
                children: [
                  Text(
                    "Popular",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Spacer(),
                  Text(
                    "View all",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF6154d5)),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only( right: 24.0),
                child: ListView.builder(
                    itemCount: popular.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Row(
                          children: [
                            Image.asset(popular[index]),
                            const SizedBox(
                              width: 16,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      category[index],
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF6154D5)),
                                    ),
                                    Text(
                                      time[index],
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  title[index],
                                  style: const TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xFF0A0816)),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  subTitle[index],
                                  style: const TextStyle(
                                      fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xFF6B678B)),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
