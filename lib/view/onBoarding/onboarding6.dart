import 'package:flutter/material.dart';
import 'package:testcase/Custom/custombutton.dart';
import 'package:testcase/view/auth/login.dart';
import 'package:testcase/view/onBoarding/onboarding5.dart';

class FoodPrefScreen extends StatefulWidget {
  const FoodPrefScreen({super.key});

  @override
  State<FoodPrefScreen> createState() => _FoodPrefScreenState();
}

class _FoodPrefScreenState extends State<FoodPrefScreen> {
  List<String> listItem = [
    "Cycling",
    "Swimming",
    "Walking",
    "Running",
    "Strength training",
    "Yoga"
  ];
  @override
  Widget build(BuildContext context) {
   String? selectedValue;
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
      //     width: double.infinity,
      //     height: 1,
      //     decoration: const BoxDecoration(
      //         color: Color(0xFF6154D5),
      //         borderRadius: BorderRadius.only(
      //           topRight: Radius.circular(20),
      //           bottomRight: Radius.circular(20),
      //         )),
      //     child: null),
       const LinearProgressIndicator(
            value: 1,
              color: Color(0xFF6154D5),
          ),
      const Center(
          child: Column(children: [
        SizedBox(
          height: 89,
        ),
        Text(
          ' Now, lets talk about\n exercise',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500,color: Color(0xFF0A0816)),
        ),
        SizedBox(
          height: 9,
        ),
        Text(
          'Torem ipsum dolor sit amet, consectetur\n alertyim adipiscing elit.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Color(0xFF6B678B)),
        ),
        SizedBox(
          height: 34,
        ),
      ])),
      Padding(
        padding: const EdgeInsets.only(left: 24.0,right: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'What’s your preferred exercise type?',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Color(0xFF0A0816)),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFE3E5E5),width: 1),
                borderRadius: BorderRadius.circular(8)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:15.0),
                child: DropdownButton<String>(
                  isExpanded: true,
                 underline: const SizedBox(),
                  hint:const Text("Choose from list",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xFFACACAF)),),
                  icon: Image.asset('assets/Shape.png'),
                  iconSize: 24,
                  value: selectedValue,
                  onChanged: (String? value) {
                    setState(() {
                      selectedValue = value;
                    });
                  },
                  items: listItem.map<DropdownMenuItem<String>>((String item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'How often do you plan to exerciseper week?',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Color(0xFF0A0816)),
            ),
            const SizedBox(
              height: 8,
            ),
             Container(
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFE3E5E5),width: 1),
                borderRadius: BorderRadius.circular(8)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:15.0),
                child: DropdownButton<String>(
                  isExpanded: true,
                 underline: const SizedBox(),
                  hint:const Text("Choose from list",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xFFACACAF)),),
                  icon: Image.asset('assets/Shape.png'),
                  iconSize: 24,
                  value: selectedValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue;
                    });
                  },
                  items: listItem.map<DropdownMenuItem<String>>((String item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                ),
              ),
            ),
             const SizedBox(
              height: 20,
            ),
            const Text(
              'How experienced are you in fitness?',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Color(0xFF0A0816)),
            ),
            const SizedBox(
              height: 8,
            ),
             Container(
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFE3E5E5),width: 1),
                borderRadius: BorderRadius.circular(8)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:15.0),
                child: DropdownButton<String>(
                  isExpanded: true,
                 underline: const SizedBox(),
                  hint:const Text("Choose from list",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xFFACACAF)),),
                  icon: Image.asset('assets/Shape.png'),
                  iconSize: 24,
                  value: selectedValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue;
                    });
                  },
                  items: listItem.map<DropdownMenuItem<String>>((String item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                ),
              ),
             ),
              const SizedBox(
              height: 123,
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
                           builder: (context) => const FoodScreenState(),
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
                           builder: (context) => const LogIn(),
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
          ],
        ),
      )
    ]));
  }
}
