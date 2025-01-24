import 'package:flutter/material.dart';
import 'package:testcase/Custom/custombutton.dart';
import 'package:testcase/view/onBoarding/onboarding4.dart';
import 'package:testcase/view/onBoarding/onboarding6.dart';

class FoodScreenState extends StatefulWidget {
  const FoodScreenState({super.key});

  @override
  State<FoodScreenState> createState() => _FoodScreenStateState();
}

class _FoodScreenStateState extends State<FoodScreenState> {
 int ? index = 0;
  var arrImage = [
    'assets/ic_fruit.png',
    'assets/ic_veg.png',
    'assets/ic_dairy.png',
    'assets/ic_fruit.png',
    'assets/ic_veg.png',
    'assets/ic_dairy.png',
    'assets/ic_fruit.png',
    'assets/ic_veg.png',
    'assets/ic_dairy.png',
  ];
  List<String> arrDetail = [
    'Fruit',
    'Vegetables',
    'Dairy',
    'Fruit',
    'Vegetables',
    'Dairy',
    'Fruit',
    'Vegetables',
    'Dairy'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(
        height: 58,
      ),
      const Center(
        child: Text(
          'Food Preferences',
           style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,color: Color(0xFF0A0816)),
        ),
      ),
      const SizedBox(
        height: 22,
      ),
      // Container(
      //     width: 333,
      //     height: 1,
      //     decoration: const BoxDecoration(
      //         color: Color(0xFF6154D5),
      //         borderRadius: BorderRadius.only(
      //           topRight: Radius.circular(20),
      //           bottomRight: Radius.circular(20),
      //         )),
      //     child: null),
       const LinearProgressIndicator(
            value: 0.82,
              color: Color(0xFF6154D5),
          ),
      Column(children: [
        const SizedBox(
          height: 89,
        ),
        const Text(
          'Select Your Preferences',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500,color: Color(0xFF0A0816)),
        ),
        const SizedBox(
          height: 9,
        ),
        const Text(
          'Torem ipsum dolor sit amet, consectetur\n alertyim adipiscing elit.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Color(0xFF6B678B)),
        ),
        const SizedBox(
          height: 23,
        ),
        SizedBox(
          height: 500,
          child: GridView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 80,
                      width: 80,
                      child: CircleAvatar(
                          backgroundColor:   index == 0 ? const Color(0xFF6154D5) :  const Color(0xFFEFEEFB),
                          child: Image.asset(arrImage[index],color:   index == 0 ? Colors.white :  const Color(0xFF6B678B))),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                     Text(
                      arrDetail[index],
                      style:
                          const TextStyle(color: Color(0xFF0A0816),fontSize: 16, fontWeight: FontWeight.w500),
                    )
                  ],
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 12),
              itemCount: arrImage.length),
        ),
        const SizedBox(
          height: 32,
        ),
        Row(
          children: [
            const SizedBox(
              width: 22,
            ),
            Expanded(
                      child: CustomButton(
                       text: "Back",
                       onCall: () {
                          Navigator.of(context).push(
                         MaterialPageRoute(
                           builder: (context) => const SleepScreenState(),
                         ),
                       );
                       },
                       backgroundColor: Colors.white,
                       textColor: const Color(0xFF6154D5),
                       borderRadius:
                           const BorderRadius.all(Radius.circular(15)),
                       padding: 14.5,
                       fontSize: 16,
                       fontWeight: FontWeight.w500,
                       borderColor: const Color(0xFF6154D5),
                       borderWidth: 1,
                                                ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: CustomButton(
                         text: "Continue",
                         onCall: () {
                           Navigator.of(context).push(
                         MaterialPageRoute(
                           builder: (context) => const FoodPrefScreen(),
                         ),
                       );
                         },
                         backgroundColor: const Color(0xFF6154D5),
                         textColor:  Colors.white,
                         borderRadius:
                             const BorderRadius.all(Radius.circular(15)),
                         padding: 14.5,
                         fontSize: 16,
                         fontWeight: FontWeight.w500,
                         borderColor: const Color(0xFF6154D5),
                         borderWidth: 1,
                       ),
                    ),
            const SizedBox(
              width: 22,
            ),
          ],
        ),
      ])
    ]));
  }
}
