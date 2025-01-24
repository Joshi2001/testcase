import 'package:flutter/material.dart';
import 'package:testcase/Custom/customcontainer.dart';
import 'package:testcase/view/onBoarding/onboarding2.dart';

class GoalScreen extends StatefulWidget {
  const GoalScreen({super.key});

  @override
  State<GoalScreen> createState() => __GoalsScreenStateState();
}

class __GoalsScreenStateState extends State<GoalScreen> {
  int? index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 58,
            ),
            const Center(
              child: Text(
                'Goals Settings',
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
              value: 0.18,
              color: Color(0xFF6154D5),
            ),
            Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 89,
                  ),
                  const Text(
                    'What’s your goal',
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
                    height: 109,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                      child: 
                       CustomContainer(
                        contaierColor: index == 0
                            ? const Color(0xFF6154D5)
                            : const Color(0xFFEFEEFB),
                            borderRadius: const BorderRadius.all(Radius.circular(15)),
                            image: "assets/img_lose_weight.png",
                            imageColor:   index == 0 ? Colors.white :  const Color(0xFF6B678B),
                            text: "Lose Weight",
                            fontSize: 20,
                            sizedBoxW: 10,
                            fontWeight: FontWeight.w500,
                            textColor:  index == 0 ? Colors.white :  const Color(0xFF6B678B),
        
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                      child: CustomContainer(
                        contaierColor: index == 1
                            ? const Color(0xFF6154D5)
                            : const Color(0xFFEFEEFB),
                            borderRadius: const BorderRadius.all(Radius.circular(15)),
                            image: "assets/img_be_fit.png",
                            imageColor:   index == 1 ? Colors.white :  const Color(0xFF6B678B),
                            text: "Be Fit",
                            fontSize: 20,
                            sizedBoxW: 10,
                            fontWeight: FontWeight.w500,
                            textColor:  index == 1 ? Colors.white :  const Color(0xFF6B678B),
        
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 2;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                      child: 
                       CustomContainer(
                        contaierColor: index == 2
                            ? const Color(0xFF6154D5)
                            : const Color(0xFFEFEEFB),
                            borderRadius: const BorderRadius.all(Radius.circular(15)),
                            image: "assets/img_gain_weight.png",
                            imageColor:   index == 2 ? Colors.white :  const Color(0xFF6B678B),
                            text: "Gain Weight",
                            fontSize: 20,
                            sizedBoxW: 10,
                            fontWeight: FontWeight.w500,
                            textColor:  index == 2 ? Colors.white :  const Color(0xFF6B678B),
        
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 118,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const WeightScreen(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color(0xFF6154D5),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 14.5, bottom: 14.5),
                          child: Center(
                              child: Text(
                            'Continue',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
