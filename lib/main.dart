import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testcase/view/splash/splash.dart';
import 'package:testcase/view_model/auth_view_model.dart';
import 'package:testcase/view_model/user_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthViewModel()),
         ChangeNotifierProvider(create: (_) => UserViewModel()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "",
        home: SplashScreen(),
      ),
    );
  }
}
