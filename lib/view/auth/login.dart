// ignore_for_file: avoid_print, unused_local_variable

import 'package:flutter/material.dart';
import 'package:testcase/Custom/custombutton.dart';
import 'package:testcase/Custom/customtextfield.dart';
import 'package:testcase/Custom/mediaQuari.dart';
import 'package:testcase/view_model/auth_view_model.dart';
import 'package:testcase/Custom/showtoast.dart';
import 'package:testcase/view/auth/signup.dart';
import 'package:provider/provider.dart';


class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

 

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isRememberMeChecked = false;
   
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNopde = FocusNode();
  FocusNode  btnFocusNode = FocusNode(); 


 
  @override
  Widget build(BuildContext context) {
    double screenWidth = Mediaquery.getScreenWidth(context);
    double screenHeight = Mediaquery.getScreenHeight(context);
    double h10 = Mediaquery.getFontSize10(context);
    double h12 = Mediaquery.getFontSize12(context);
    double h14 = Mediaquery.getFontSize14(context);
    double h16 = Mediaquery.getFontSize16(context);
    double h18 = Mediaquery.getFontSize18(context);
    double h20 = Mediaquery.getFontSize20(context);
    double h22 = Mediaquery.getFontSize22(context);
    double h24 = Mediaquery.getFontSize24(context);
     final authViewModel = Provider.of<AuthViewModel>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: double.infinity,
                height: screenHeight*0.25,
                decoration: const BoxDecoration(
                  color: Color(0xFF6154D5),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                     SizedBox(
                      height: screenHeight*0.05,
                    ),
                    Container(
                      width: screenWidth*0.2,
                      height: screenHeight*0.05,
                      decoration: const BoxDecoration(color: Colors.white),
                      child:  Center(
                        child: Text(
                          'LOGO',
                          style: TextStyle(
                              color: const Color(0xFF6154D5),
                              fontSize: h14,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                     SizedBox(
                      height: screenHeight*0.02,
                    ),
                     Text(
                      'Welcome Back!',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: h24,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                     Text(
                      'Please login to access your account',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: h14,
                          color: Colors.white),
                    )
                  ],
                )),
             SizedBox(height:screenHeight*0.03),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    'Email',
                    style: TextStyle(
                        fontSize: h16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF0A0816)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomTextField(
                    controller: emailController,
                    fontSize:h16,
                    maxLines: 1,
                    focusNode: emailFocusNode,
                    fontWeight: FontWeight.w400,
                    textColor: Colors.black,
                    hintTextColor: const Color(0xFFACACAF),
                    hintText: "Enter your email address",
                    hintFontSize: h16,
                    hintFontWeight: FontWeight.w400,
                    filled: true,
                    fillColor: const Color.fromARGB(255, 255, 254, 254),
                    enableBorderRadius:
                        const BorderRadius.all(Radius.circular(8)),
                    enableBorderColor: const Color(0xFFE3E5E5),
                    enableBorderWidth: 1,
                    focusedBorderColor: const Color(0xFFE3E5E5),
                    focusedBorderRadius:
                        const BorderRadius.all(Radius.circular(8)),
                    focusedBorderWidth: 1,
                     onFieldSubmitted: (value) { 
                      FocusScope.of(context).requestFocus(passwordFocusNopde);
                      },
                  ),
                   SizedBox(
                    height: screenHeight*0.03,
                  ),
                   Text(
                    'Password',
                    style: TextStyle(
                        color: const Color(0xFF0A0816),
                        fontSize: h16,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomTextField(
                    controller: passwordController,
                    fontSize: h16,
                    maxLines: 1,
                    focusNode: passwordFocusNopde,
                    fontWeight: FontWeight.w400,
                    textColor: Colors.black,
                    hintTextColor: const Color(0xFFACACAF),
                    hintText: "Enter your password",
                    hintFontSize: h16,
                    hintFontWeight: FontWeight.w400,
                    filled: true,
                    fillColor: const Color.fromARGB(255, 255, 254, 254),
                    enableBorderRadius:
                        const BorderRadius.all(Radius.circular(8)),
                    enableBorderColor: const Color(0xFFE3E5E5),
                    enableBorderWidth: 1,
                    focusedBorderColor: const Color(0xFFE3E5E5),
                    focusedBorderRadius:
                        const BorderRadius.all(Radius.circular(8)),
                    focusedBorderWidth: 1,
                    onFieldSubmitted: (value){
                      FocusScope.of(context).requestFocus(btnFocusNode);
                    }
                  ),
                   SizedBox(
                    height: screenHeight*0.03,
                  ),
                  Row(
                    children: [
                      Checkbox(
                          side: const BorderSide(color: Color(0xFFE3E5E5)),
                          value: false,
                          onChanged: (bool? newValue) {
                            setState(() {
                              isRememberMeChecked = newValue ?? false;
                            });
                          }),
                       Text(
                        'Remember Me',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: h14,
                            color: const Color(0xFF0A0816)),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          
                        },
                        child:  Text(
                          'Forgot Password?',
                          style: TextStyle(
                              color: const Color(0xFF6154D5),
                              fontSize: h16,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                   SizedBox(
                    height:screenHeight*0.03,
                  ),
                  CustomButton(
                      borderColor: null,
                      borderWidth: null,
                      width: double.infinity,
                      text: "Log in",
                      onCall: () async {
                        String ? errorMessage = validator();
                        if(errorMessage != null){
                          showToast(errorMessage);
                        }else{
                          Map data ={
                            'email' :emailController.text.toString(),
                            'password': passwordController.text.toString(),
                          };
                          authViewModel.loginApi(data , context);
                        }
                      },
                      backgroundColor: const Color(0xFF6154D5),
                      textColor: Colors.white,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15)),
                      padding: 18,
                      fontSize: h16,
                      fontWeight: FontWeight.w500,
                      focusNode: btnFocusNode,
                     ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child:
                            Divider(color: Color(0xFFE0E0E0), thickness: 1),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Or login with ',
                        style: TextStyle(
                            fontSize: h16,
                            color: const Color(0xFFE0E0E0),
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Expanded(
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
                          width: screenWidth*0.2,
                          height: screenHeight*0.065,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 218, 214, 245),
                                  blurRadius: 15,
                                  offset: Offset(0, 0),
                                  spreadRadius: 0)
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 13.0, horizontal: 14.0),
                            child: Image.asset(
                              'assets/ic_google.png',
                              width: screenWidth*0.1,
                              height: screenHeight*0.05,
                            ),
                          )),
                      const SizedBox(width: 20),
                      Container(
                            width: screenWidth*0.2,
                          height: screenHeight*0.065,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 218, 214, 245),
                                  blurRadius: 15,
                                  offset: Offset(0, 0),
                                  spreadRadius: 0)
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 14),
                            child: Image.asset(
                              'assets/ic_facebook.png',
                               width: screenWidth*0.1,
                              height: screenHeight*0.05,
                            ),
                          )),
                      const SizedBox(width: 20),
                      Container(
                           width: screenWidth*0.2,
                          height: screenHeight*0.065,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 218, 214, 245),
                                  blurRadius: 15,
                                  offset: Offset(0, 0),
                                  spreadRadius: 0)
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 13.0, horizontal: 14.0),
                            child: Image.asset(
                              'assets/ic_apple.png',
                               width: screenWidth*0.1,
                              height: screenHeight*0.05,
                            ),
                          )),
                    ],
                  ),
                   SizedBox(
                    height: screenHeight*0.1,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SignUpScreen()));
                      },
                      child: RichText(
                        text:  TextSpan(children: [
                          TextSpan(
                              text: 'New here? ',
                              style: TextStyle(
                                  fontSize: h16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400)),
                           TextSpan(
                              text: 'Sign Up',
                              style: TextStyle(
                                  fontSize: h16,
                                  color: const Color(0xFF6154D5),
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
  String ? validator(){
    if(emailController.text.toString().isEmpty){
    return 'Please enter email address.';
    }else if((!RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$").hasMatch(emailController.text.toString()))){
     return 'Please enter valid email address.';
    }else if(passwordController.text.toString().isEmpty){
     return 'Please enter password.';
    }else if((!RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$').hasMatch(passwordController.text.toString()))){
      return 'Password should be 8 characters long and atleast conatin 1 number, 1 upercase ,1 lower case and 1 special symbol.';
    }
    return null;
  }
}

