import 'package:flutter/material.dart';
import 'package:testcase/Custom/custombutton.dart';
import 'package:testcase/Custom/customcontainer.dart';
import 'package:testcase/view/onBoarding/onboarding3.dart';
import 'package:testcase/view/onBoarding/onboarding5.dart';

class SleepScreenState extends StatefulWidget {
  const SleepScreenState({super.key});

  @override
  State<SleepScreenState> createState() => __SleepScreenStateState();
}

class __SleepScreenStateState extends State<SleepScreenState> {
  int ? currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 58,
          ),
          const Center(
            child: Text(
              'Sleep Cycle',
               style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,color: Color(0xFF0A0816)),
            ),
          ),
          const SizedBox(
            height: 22,
          ),
            const LinearProgressIndicator(
            value: 0.66,
              color: Color(0xFF6154D5),
          ),
          Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 89,
                ),
                const Text(
                  'What’s your sleep cycle',
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
                  height: 109,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = 0;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                    child:
                     CustomContainer(
                      contaierColor: currentIndex == 0
                          ? const Color(0xFF6154D5)
                          : const Color(0xFFEFEEFB),
                          borderRadius: const BorderRadius.all(Radius.circular(15)),
                          image: "assets/img_Early.png",
                          imageColor:   currentIndex == 0 ? Colors.white :  const Color(0xFF6B678B),
                          text: "Early riser",
                          fontSize: 20,
                          sizedBoxW: 10,
                          fontWeight: FontWeight.w500,
                          textColor:  currentIndex == 0 ? Colors.white :  const Color(0xFF6B678B),

                    ),
                  ),
                ),
                 const SizedBox(
                  height: 20,
                ),
                 GestureDetector(
                  onTap: () {
                     
                    setState(() {
                      currentIndex = 1;
                    });
                 
                  },
                   child: Padding(
                    padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                    child: 
                     CustomContainer(
                      contaierColor: currentIndex == 1
                          ? const Color(0xFF6154D5)
                          : const Color(0xFFEFEEFB),
                          borderRadius: const BorderRadius.all(Radius.circular(15)),
                          image: "assets/img_night.png",
                          imageColor:   currentIndex == 1 ? Colors.white :  const Color(0xFF6B678B),
                          text: "Night Owl",
                          fontSize: 20,
                          sizedBoxW: 10,
                          fontWeight: FontWeight.w500,
                          textColor:  currentIndex == 1 ? Colors.white :  const Color(0xFF6B678B),

                    ),
                                   ),
                 ),
                 const SizedBox(
                  height: 20,
                ),
                 GestureDetector(
                  onTap: () {
                      setState(() {
                      currentIndex = 2;
                    });
                  },
                   child: Padding(
                    padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                    child:
                    CustomContainer(
                      contaierColor: currentIndex == 2
                          ? const Color(0xFF6154D5)
                          : const Color(0xFFEFEEFB),
                          borderRadius: const BorderRadius.all(Radius.circular(15)),
                          image: "assets/img_flexible.png",
                          imageColor:   currentIndex == 2 ? Colors.white :  const Color(0xFF6B678B),
                          text: "Flexible",
                          fontSize: 20,
                          sizedBoxW: 10,
                          fontWeight: FontWeight.w500,
                          textColor:  currentIndex == 2 ? Colors.white :  const Color(0xFF6B678B),

                    ),
                                   ),
                 ),
                const SizedBox(height: 118,),
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
                           builder: (context) => const HeightScreen(),
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
                           builder: (context) => const FoodScreenState(),
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
        ],
      ),
    );
  }
}