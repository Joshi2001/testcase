import 'package:flutter/material.dart';
import 'package:testcase/Custom/custombutton.dart';
import 'package:testcase/view/onBoarding/onboarding2.dart';
import 'package:testcase/view/onBoarding/onboarding4.dart';

class HeightScreen extends StatefulWidget {
  const HeightScreen({super.key});

  @override
  State<HeightScreen> createState() => _HeightScreenState();
}

class _HeightScreenState extends State<HeightScreen> {
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
          'Height',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,color: Color(0xFF0A0816)),
        ),
      ),
      const SizedBox(
        height: 22,
      ),
      // Container(
      //     width: 200,
      //     height: 1,
      //     decoration: const BoxDecoration(
      //         color: Color(0xFF6154D5),
      //         borderRadius: BorderRadius.only(
      //           topRight: Radius.circular(20),
      //           bottomRight: Radius.circular(20),
      //         )),
      //     child: null),
       const LinearProgressIndicator(
            value: 0.50,
              color: Color(0xFF6154D5),
          ),
      Center(
        child: Column(
          children: [
            const SizedBox(
              height: 89,
            ),
            const Text(
              'How tall are you',
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
              height: 445,
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
                        builder: (context) => const WeightScreen(),
                      ),);
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
                        builder: (context) => const SleepScreenState(),
                      ),);
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