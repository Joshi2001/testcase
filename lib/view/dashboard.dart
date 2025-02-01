// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:testcase/Custom/mediaQuari.dart';
import 'package:testcase/view/bottomnavigation2.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  var arrImage = [
    'assets/ic_fruit.png',
    'assets/ic_veg.png',
    'assets/ic_dairy.png',
    'assets/ic_fruit.png',
  ];
  List<String> arrDetail = [
    'Fruit',
    'Vegetables',
    'Dairy',
    'Fruit',
  ];

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
    return Scaffold(
      backgroundColor: const Color(0xFFFDFDFF),
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
                 Navigator.of(context).pop();
            }, child: Image.asset('assets/ic_back.png')),
        backgroundColor: Colors.white,
        shape: Border(
            bottom: BorderSide(
          color: Colors.black.withOpacity(0.1),
          width: 1.0,
        )),
        title:  Text(
          'Dashboard',
          style: TextStyle(fontSize: h18, fontWeight: FontWeight.w500),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Bottomnavigation2()));
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Image.asset('assets/ic_dashboard.png'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          child: Column(
            children: [
               SizedBox(
                height: screenHeight * 0.02,  
              ),
               Row(
                children: [
                   SizedBox(
                      height: screenHeight * 0.05,
                      width: screenWidth * 0.1,
                      child: const CircleAvatar(
                        backgroundImage: AssetImage("assets/img_profile.png"),
                      )),
                  SizedBox(
                    width:screenWidth * 0.02,
                  ),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Good day,",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: h26, fontWeight: FontWeight.w400),
                          ),
                           Text(
                            " Susan",
                            style: TextStyle(
                                fontSize: h26,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                       Text(
                        "Track your daily activity and stay healthy",
                        style: TextStyle(
                            color: const Color(0xFF6B678B),
                            fontSize: h14,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
               SizedBox(
                height:screenHeight * 0.02,
              ),
              Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Color(0XFF6154D5)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 20.0, bottom: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                          "Enhance your health journey by providing more info about your health.",
                          style: TextStyle(
                              fontSize: h14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                              textAlign: TextAlign.start,
                        ),
                         SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        Row(
                          children: [
                             Text(
                              "Click here to add critical health information.",
                              style: TextStyle(
                                  fontSize: h12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                            Image.asset(
                              "assets/ic_next.png",
                              height: 24,
                              width: 24,
                            )
                          ],
                        )
                      ],
                    ),
                  )),
               SizedBox(
                height: screenHeight * 0.02,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        width: screenWidth * 0.40,
                        height: screenHeight * 0.2,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 233, 227, 227),
                              spreadRadius: 1,
                              blurRadius: 1,
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, top: 15, right: 25, bottom: 24),
                          child: Column(
                            children: [
                               Center(
                                 child: Text(
                                  "Goals Settings",
                                  style: TextStyle(
                                      fontSize: h14, fontWeight: FontWeight.w600),
                                                               ),
                               ),
                               SizedBox(
                                height: screenHeight * 0.02,
                              ),
                              Image.asset(
                                "assets/img_profile.png",
                                height: screenHeight * 0.1,
                                width: screenWidth * 0.2,
                              )
                            ],
                          ),
                        ),
                      ),
                       SizedBox(
                        height: screenHeight  * 0.02, 
                      ),
                      Row(
                        children: [
                          Container(
                            width: screenWidth * 0.40,
                            height: screenHeight * 0.2,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 233, 227, 227),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                )
                              ],
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 25.0, top: 15, right: 25, bottom: 24),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                       Text(
                                        "Food Pref.",
                                        style: TextStyle(
                                            fontSize: h14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                       SizedBox(
                                        width: screenWidth * 0.01,
                                      ),
                                      Image.asset("assets/ic_food.png",height: screenHeight*0.05,width: screenWidth*0.1,)
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                                  children: [
                                    Container(
                                      height: screenHeight * 0.03,
                                      width: screenWidth * 0.15, 
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFEFEEFB),
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(5)),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                             SizedBox(
                                              width:screenWidth*0.01),
                                          Image.asset(
                                            "assets/ic_fruit.png",color: const Color(0xFF6154D5),
                                           height: screenHeight*0.014,
                                           width: screenWidth*0.05,
                                          ),
                                           SizedBox(
                                              width:screenWidth*0.01),
                                           Text(
                                            "Fruit",
                                            style: TextStyle(
                                              fontSize: h10,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                     SizedBox(width:screenWidth * 0.01),
                                     Container(
                                       height: screenHeight * 0.03,
                                      width: screenWidth * 0.15, 
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFEFEEFB),
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(5)),
                                      ),
                                      child: Row(
                                         mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                              width:screenWidth*0.01),
                                          Image.asset(
                                            "assets/ic_veg.png",color: const Color(0xFF6154D5),
                                          height: screenHeight*0.014,
                                           width: screenWidth*0.03,
                                          ),
                                           SizedBox(
                                              width:screenWidth*0.01),
                                           Text(
                                            "Veggies",
                                            style: TextStyle(
                                              fontSize: h10,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  
                                  ],
                                ),
                                SizedBox(height: screenHeight * 0.01),
                                 Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                   children: [
                                     Container(
                                      height: screenHeight * 0.03,
                                      width: screenWidth * 0.15, 
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFEFEEFB),
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(5)),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                           SizedBox(
                                              width:screenWidth*0.01),
                                          Image.asset(
                                            "assets/ic_dairy.png",color: const Color(0xFF6154D5),
                                            height: screenHeight*0.014,
                                           width: screenWidth*0.03,
                                          ),
                                          SizedBox(
                                              width:screenWidth*0.01),
                                           Text(
                                            "Dairy",
                                            style: TextStyle(
                                              fontSize: h10,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          
                                        ],
                                      ),
                                     ),
                                      SizedBox(width: screenWidth * 0.01),
                                      Container(
                                     height: screenHeight * 0.03,
                                      width: screenWidth * 0.15, 
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFEFEEFB),
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(5)),
                                      ),
                                      child: Row(
                                         mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                           SizedBox(
                                              width:screenWidth*0.01),
                                          Image.asset(
                                             "assets/ic_fruit.png",color: const Color(0xFF6154D5),
                                           height: screenHeight*0.014,
                                           width: screenWidth*0.03,
                                          ),
                                           SizedBox(
                                              width:screenWidth*0.01),
                                           Text(
                                            "Fruit",
                                            style: TextStyle(
                                              fontSize: h10,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                   ],
                                 )
                              ],
                            ),
                          ),
                         
                        ],
                      ),
                       SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Container(
                        width: screenWidth * 0.40,
                        height: screenHeight * 0.15,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 233, 227, 227),
                              spreadRadius: 1,
                              blurRadius: 1,
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 25.0, top: 15, right: 25, bottom: 24),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                   Text(
                                    "Qureies",
                                    style: TextStyle(
                                        fontSize: h14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                   SizedBox(
                                    width: screenWidth * 0.034,
                                  ),
                                  Image.asset("assets/ic_query.png")
                                ],
                              ),
                            ),
                            SizedBox(
                              height: screenHeight * 0.01,),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Text(
                                   "5/5",
                                   style: TextStyle(
                                       fontSize: h16,
                                       fontWeight: FontWeight.w600),
                                 ),
                                  SizedBox(
                                   width: screenWidth * 0.01,
                                 ),
                                  Text(
                                   "Queries left",
                                   style: TextStyle(
                                       fontSize: h14,
                                       fontWeight: FontWeight.w400),
                                 )
                               ],
                             ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  //2Colum
                  Column(
                    children: [
                      Container(
                         width: screenWidth * 0.40,
                        height: screenHeight * 0.15,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 233, 227, 227),
                              spreadRadius: 1,
                              blurRadius: 1,
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 25.0, top: 15, right: 25, bottom: 24),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                   Text(
                                    "Weight",
                                    style: TextStyle(
                                        fontSize: h14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                   SizedBox(
                                    width: screenWidth * 0.1,
                                  ),
                                  Image.asset("assets/ic_weight.png")
                                ],
                              ),
                            ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Text(
                                   "75",
                                   style: TextStyle(
                                       fontSize: h16,
                                       fontWeight: FontWeight.w600),
                                 ),
                                 SizedBox(
                                   width: screenWidth * 0.01,
                                 ),
                                  Text(
                                   "KG",
                                   style: TextStyle(
                                       fontSize: h14,
                                       fontWeight: FontWeight.w400),
                                 )
                               ],
                             ),
                          ],
                        ),
                      ),
                       SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Container(
                        width: screenWidth * 0.40,
                        height: screenHeight * 0.15,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 233, 227, 227),
                              spreadRadius: 1,
                              blurRadius: 1,
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 25.0, top: 15, right: 25, bottom: 24),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                   Text(
                                    "Height",
                                    style: TextStyle(
                                        fontSize: h14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                   SizedBox(
                                    width: screenWidth * 0.1,
                                  ),
                                  Image.asset("assets/ic_line.png")
                                ],
                              ),
                            ),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                 Text(
                                  "175",
                                  style: TextStyle(
                                      fontSize:h16,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.01,
                                ),
                                 Text(
                                  "CM",
                                  style: TextStyle(
                                      fontSize: h14,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                       SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Container(
                         width: screenWidth * 0.40,
                        height: screenHeight * 0.25,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 233, 227, 227),
                              spreadRadius: 1,
                              blurRadius: 1,
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Padding(
                              padding: const EdgeInsets.only( left: 25.0, top: 15, right: 25, bottom: 24),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  
                                   Text(
                                    "Sleep Cycle",
                                    style: TextStyle(
                                        fontSize: h14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                    SizedBox(
                                      width: screenWidth * 0.032,
                                    ),  
                                  Image.asset("assets/ic_moon.png")
                                ],
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(
                                    left: 24.0, bottom: 25.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/ic_earlygroup.png",
                                      width: screenWidth * 0.2,
                                      height: screenHeight * 0.1,
                                    ),
                                      SizedBox(height: screenHeight * 0.01),
                                     Text(
                                      "Early Riser",
                                      style: TextStyle(
                                          color: const Color(0xFF6B678B),
                                          fontSize: h18,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
