import 'package:flutter/material.dart';
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
        title: const Text(
          'Dashboard',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
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
              const SizedBox(
                height: 20.33,
              ),
              const Row(
                children: [
                  SizedBox(
                      height: 45,
                      width: 45,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/img_profile.png"),
                      )),
                  SizedBox(
                    width: 10.0,
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
                                fontSize: 25, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " Susan",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                      Text(
                        "Track your daily activity and stay healthy",
                        style: TextStyle(
                            color: Color(0xFF6B678B),
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30.0,
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
                      children: [
                        const Text(
                          "Enhance your health journey by providing more info about your health.",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            const Text(
                              "Click here to add critical health information.",
                              style: TextStyle(
                                  fontSize: 12,
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
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
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
                              const Text(
                                "Goals Settings",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 28,
                              ),
                              Image.asset(
                                "assets/img_profile.png",
                                height: 101,
                                width: 101,
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Food Pref.",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const SizedBox(
                                        width: 17,
                                      ),
                                      Image.asset("assets/ic_food.png")
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0,left: 10,right: 10),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 18,
                                        width: 62.5,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFEFEEFB),
                                          borderRadius:
                                              BorderRadius.all(Radius.circular(5)),
                                        ),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              "assets/ic_fruit.png",color: const Color(0xFF6154D5),
                                             height: 16,
                                             width: 14,
                                            ),
                                            const SizedBox(
                                                width:
                                                    5),
                                            const Text(
                                              "Fruit",
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                       Container(
                                        height: 18,
                                        width: 62.5,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFEFEEFB),
                                          borderRadius:
                                              BorderRadius.all(Radius.circular(5)),
                                        ),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              "assets/ic_veg.png",color: const Color(0xFF6154D5),
                                             height: 16,
                                             width: 14,
                                            ),
                                            const SizedBox(
                                                width:
                                                    5),
                                            const Text(
                                              "Veggies",
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                    ],
                                  ),
                                ),
                                 Padding(
                                   padding: const EdgeInsets.only(bottom: 24.0,left: 10,right: 10),
                                   child: Row(
                                     children: [
                                       Container(
                                        height: 18,
                                        width: 62.5,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFEFEEFB),
                                          borderRadius:
                                              BorderRadius.all(Radius.circular(5)),
                                        ),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              "assets/ic_dairy.png",color: const Color(0xFF6154D5),
                                             height: 16,
                                             width: 14,
                                            ),
                                            const SizedBox(
                                                width:
                                                    5),
                                            const Text(
                                              "Dairy",
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            
                                          ],
                                        ),
                                       ),
                                       const SizedBox(width: 10),
                                        Container(
                                        height: 18,
                                        width: 62.5,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFEFEEFB),
                                          borderRadius:
                                              BorderRadius.all(Radius.circular(5)),
                                        ),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                               "assets/ic_fruit.png",color: const Color(0xFF6154D5),
                                             height: 16,
                                             width: 14,
                                            ),
                                            const SizedBox(
                                                width:
                                                    5),
                                            const Text(
                                              "Fruit",
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                     ],
                                   ),
                                 )
                              ],
                            ),
                          ),
                         
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Qureies",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    width: 47,
                                  ),
                                  Image.asset("assets/ic_query.png")
                                ],
                              ),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsets.only(left: 24.0, bottom: 25.0),
                              child: Row(
                                children: [
                                  Text(
                                    "5/5",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Queries left",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Weight",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    width: 47,
                                  ),
                                  Image.asset("assets/ic_weight.png")
                                ],
                              ),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsets.only(left: 24.0, bottom: 25.0),
                              child: Row(
                                children: [
                                  Text(
                                    "75",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "KG",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Height",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    width: 47,
                                  ),
                                  Image.asset("assets/ic_line.png")
                                ],
                              ),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsets.only(left: 24.0, bottom: 25.0),
                              child: Row(
                                children: [
                                  Text(
                                    "175",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "CM",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Sleep Cycle",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Image.asset("assets/ic_moon.png")
                                ],
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(
                                    left: 24.0, bottom: 25.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/ic_earlygroup.png",
                                      width: 75,
                                      height: 74,
                                    ),
                                    const SizedBox(height: 22,),
                                    const Text(
                                      "Early Riser",
                                      style: TextStyle(
                                          color: Color(0xFF6B678B),
                                          fontSize: 18,
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
