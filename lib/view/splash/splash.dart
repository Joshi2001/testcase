import 'package:flutter/material.dart';
import 'package:testcase/view_model/splash_view_model.dart';

class SplashScreen extends StatefulWidget {
   const SplashScreen({super.key});
   

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

   class _SplashScreenState extends State<SplashScreen> { 
   SplashViewModel splashViewModel = SplashViewModel();

@override
void initState() {
  super.initState();
   splashViewModel.checkAuth(context);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color(0xFF6154D5)),
        child: Stack(fit: StackFit.expand, children: [
          Image.asset('assets/splash_icon.png'),
          Image.asset(
            'assets/img_bg.png',
            fit: BoxFit.fill,
          ),
        ]),
      ),
    );
  }
}
