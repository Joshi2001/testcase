// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testcase/Custom/custombutton.dart';
import 'package:testcase/Custom/customtextfield.dart';
import 'package:testcase/view/auth/login.dart';
import 'package:testcase/Custom/showtoast.dart';
import 'package:testcase/view_model/auth_view_model.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

final fullNameController = TextEditingController();
final emailController = TextEditingController();
final passwordController = TextEditingController();

  @override
   Widget build(BuildContext context) {

    final authViewModel = Provider.of<AuthViewModel>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                  color: Color(0xFF6154D5),
                ),
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                      width: 80,
                      height: 40,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: const Center(
                        child: Text(
                          'LOGO',
                          style: TextStyle(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Let’s Get Started',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Sign up now and unlock your fitness journey.',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white),
                    )
                  ],
                )),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Full Name',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF0A0816)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomTextField(
                    controller:fullNameController ,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    textColor: Colors.black,
                    hintTextColor: const Color(0xFFACACAF),
                    hintText: "Enter your full name",
                    hintFontSize: 16,
                    hintFontWeight: FontWeight.w400,
                    filled: true,
                    fillColor: const Color.fromARGB(255, 255, 254, 254),
                    enableBorderRadius: const BorderRadius.all(Radius.circular(8)),
                    enableBorderColor: const Color(0xFFE3E5E5),
                    enableBorderWidth: 1,
                    focusedBorderColor: const Color(0xFFE3E5E5),
                    focusedBorderRadius: const BorderRadius.all(Radius.circular(8)),
                    focusedBorderWidth: 1, onFieldSubmitted: (value) {  },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Email',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF0A0816)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                   CustomTextField(
                    controller: emailController,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    textColor: Colors.black,
                    hintTextColor: const Color(0xFFACACAF),
                    hintText: "Enter your email address",
                    hintFontSize: 16,
                    hintFontWeight: FontWeight.w400,
                    filled: true,
                    fillColor: const Color.fromARGB(255, 255, 254, 254),
                    enableBorderRadius: const BorderRadius.all(Radius.circular(8)),
                    enableBorderColor: const Color(0xFFE3E5E5),
                    enableBorderWidth: 1,
                    focusedBorderColor: const Color(0xFFE3E5E5),
                    focusedBorderRadius: const BorderRadius.all(Radius.circular(8)),
                    focusedBorderWidth: 1, onFieldSubmitted: (value) {  },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Password',
                    style: TextStyle(
                        color: Color(0xFF0A0816),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                   CustomTextField(
                      controller: passwordController,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    textColor: Colors.black,
                    hintTextColor: const Color(0xFFACACAF),
                    hintText: "Enter your password",
                    hintFontSize: 16,
                    hintFontWeight: FontWeight.w400,
                    filled: true,
                    fillColor: const Color.fromARGB(255, 255, 254, 254),
                    enableBorderRadius: const BorderRadius.all(Radius.circular(8)),
                    enableBorderColor: const Color(0xFFE3E5E5),
                    enableBorderWidth: 1,
                    focusedBorderColor: const Color(0xFFE3E5E5),
                    focusedBorderRadius: const BorderRadius.all(Radius.circular(8)),
                    focusedBorderWidth: 1, onFieldSubmitted: (value) {  },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                            text: 'By continuing, you agree to our',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w400)),
                        TextSpan(
                            text: ' Terms of Service',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF6154D5),
                                fontWeight: FontWeight.w400)),
                                 TextSpan(
                            text: ' and ',
                            style: TextStyle(
                                fontSize: 12,
                                color:  Colors.black,
                                fontWeight: FontWeight.w400)),
                                 TextSpan(
                            text: 'Privacy Policy.',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF6154D5),
                                fontWeight: FontWeight.w400)),
                      ]),
                    ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                      width: double.infinity,
                      text: "Sign Up",
                      onCall: () {
                        String ? errorMessage = validate();
                        if(errorMessage != null){
                         showToast(errorMessage);
                        }else{
                            Map data ={
                              'fullname':fullNameController.text.toString(),
                              'email':emailController.text.toString(),
                              'password':passwordController.text.toString(),
                            };
                            authViewModel.signUpApi(data,context);
                        }
                      },
                      backgroundColor: const Color(0xFF6154D5),
                      textColor: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      padding: 18,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Expanded(
                        child: Divider(color: Color(0xFFE0E0E0), thickness: 1),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Or Sign Up With ',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFFE0E0E0),
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                          child: Divider(
                        color: Color(0xFFE0E0E0),
                        thickness: 1,
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width:77,
                          height: 61,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 218, 214, 245),
                                  blurRadius: 15,
                                  offset: Offset(0, 0),
                                  spreadRadius: 0)
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 13.0, horizontal: 14.0),
                            child: Image.asset(
                              'assets/ic_google.png',
                              width: 34,
                              height: 34,
                            ),
                          )),
                      const SizedBox(width: 20),
                      Container(
                          width:77,
                          height: 61,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 218, 214, 245),
                                  blurRadius: 15,
                                  offset: Offset(0, 0),
                                  spreadRadius: 0)
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 14),
                            child: Image.asset(
                              'assets/ic_facebook.png',
                              width: 17.65,
                              height: 33.99,
                            ),
                          )),
                      const SizedBox(width: 20),
                      Container(
                          width:77,
                          height: 61,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 218, 214, 245),
                                  blurRadius: 15,
                                  offset: Offset(0, 0),
                                  spreadRadius: 0)
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 13.0, horizontal: 14.0),
                            child: Image.asset(
                              'assets/ic_apple.png',
                              width: 34,
                              height: 34,
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const LogIn()));
                      },
                      child: RichText(
                        text: const TextSpan(children: [
                          TextSpan(
                              text: 'Already Have An Account?',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400)),
                          TextSpan(
                              text: ' Login',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF6154D5),
                                  fontWeight: FontWeight.w600))
                        ]),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  String ? validate(){
    if(fullNameController.text.toString().isEmpty){
      return 'Please enter full name.';
    }else if(!RegExp(r"^[a-zA-Z]+(?:['\-\s][a-zA-Z]+)*$").hasMatch(fullNameController.text.toString())){
      return "Please enter valid full name";
    }else if(emailController.text.toString().isEmpty){
      return "Please enter email address.";
    }else if((!RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$").hasMatch(emailController.text.toString()))){
      return "Please enter valid email address";
    }else if(passwordController.text.toString().isEmpty){
      return 'Please enter password.'; 
    }else if(passwordController.text.toString().length<6){
      return 'Password should be 8 characters long and atleast conatin 1 number, 1 upercase ,1 lower case and 1 special symbol.';
    }else if((!RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$').hasMatch(passwordController.text.toString()))){
      return 'Password should be 8 characters long and atleast conatin 1 number, 1 upercase ,1 lower case and 1 special symbol.';
    }
    return null;
  }
}
