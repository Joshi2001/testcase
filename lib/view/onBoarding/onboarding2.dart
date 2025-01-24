import 'package:flutter/material.dart';
import 'package:testcase/Custom/custombutton.dart';
import 'package:testcase/view/onBoarding/onboarding.dart';
import 'package:testcase/view/onBoarding/onboarding3.dart';

class WeightScreen extends StatefulWidget {
  const WeightScreen({super.key});

  @override 
  State<WeightScreen> createState() => __WeightScreenStateState();
}

class __WeightScreenStateState extends State<WeightScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 58,
            ),
            const Center(
              child: Text(
                'Weight',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF0A0816)),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            const LinearProgressIndicator(
              value: 0.34,
              color: Color(0xFF6154D5),
            ),
            Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 89,
                  ),
                  const Text(
                    'How much do you Weigh',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF0A0816)),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  const Text(
                    'Torem ipsum dolor sit amet, consectetur\n alertyim adipiscing elit.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF6B678B)),
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
                             builder: (context) => const GoalScreen(),
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
                             builder: (context) => const HeightScreen(),
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
          ]),
        ));
  }
}
