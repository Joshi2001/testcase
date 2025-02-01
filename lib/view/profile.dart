
// ignore_for_file: unused_local_variable

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:testcase/Custom/customtextfield.dart';
import 'package:testcase/Custom/mediaQuari.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  File? selectedImg;
  String? selectedValue;
  String? selectedOccu;
  String? selectedChronic;
  String? selectedAge;
  String? selectedMedications;
  String? selectedTobacco;
  String? selectedAlocohol;
  List<String> tobacco = ["Yes", "No"];
  List<String> alcohol = ["Yes", "No"];

  List<String> occupation = [
    'Software Developer',
    'Doctor',
    'Teacher',
    'Engineer',
    'Nurse',
  ];
  List<String>medications=[
    'Yes',
    'No'
  ];
List<String> chronicIllness = [
    'Diabetes',
    'Hypertension',
    'Asthma',
    'Cancer',
    'Heart Disease',
  ];  

  List<String> listItem = [
    "Cycling",
    "Swimming",
    "Walking",
    "Running",
    "Strength training",
    "Yoga"
  ];

  List<String> age = [
    "1",
    "2",
    "3",
    "4",
    '5',
    '6',
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
  ];

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
    double h26 = Mediaquery.getFontSize26(context);
    double h28 = Mediaquery.getFontSize28(context);
    double h30 = Mediaquery.getFontSize30(context);
    double h32 = Mediaquery.getFontSize32(context);
    double h34 = Mediaquery.getFontSize34(context);
    double h36 = Mediaquery.getFontSize36(context);
    double h38 = Mediaquery.getFontSize38(context);
    double h40 = Mediaquery.getFontSize40(context);
    double h42 = Mediaquery.getFontSize42(context);
    double h44 = Mediaquery.getFontSize44(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
               Navigator.of(context).pop();
            }, child: Image.asset('assets/ic_back.png')),
        backgroundColor: Colors.white,
        shape: Border(
            bottom: BorderSide(
          color: Colors.black.withOpacity(0.1),
          width: 1.0,
        )),
        title:  Text(
          'Profile',
          style: TextStyle(fontSize: h18, fontWeight: FontWeight.w500),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFF6154D5),
                borderRadius: BorderRadius.all(Radius.circular(13)),
              ),
              child:  Padding(
                padding: const EdgeInsets.only(
                    left: 14.0, right: 14, top: 5.5, bottom: 5.5),
                child: Text(
                  "Save",
                  style: TextStyle(
                      fontSize: h14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(
                height:screenHeight * 0.03,
              ),
              Container(
                decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xFFE3E5E5), width: 1),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                    right: 15,
                  ),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    underline: const SizedBox(),
                    hint:  Text(
                      "Personal info",
                      style: TextStyle(
                          fontSize: h16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    icon: Image.asset('assets/Shape.png'),
                    iconSize: 24,
                    value: selectedValue,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue = newValue;
                      });
                    },
                    items:
                        listItem.map<DropdownMenuItem<String>>((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                  ),
                ),
              ),
               SizedBox(
                height: screenHeight * 0.02, 
              ),
               Text(
                  'You can update your profile photo and personal details here',
                  style: TextStyle(
                    fontSize: h14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF6B678B),
                  )),
               SizedBox(
                height: screenHeight * 0.03,
              ),
              Center(
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 87,
                        backgroundImage: selectedImg != null
                            ? FileImage(selectedImg!)
                            : const AssetImage("assets/img_profile.png")
                                as ImageProvider,
                      ),
                      Positioned(
                        bottom: 10,
                        left: 0,
                        right: 0,
                        child: SizedBox(
                          height: 30,  
                          width: screenWidth * 0,
                          child: GestureDetector(
                              onTap: () {
                                pickerImageGallery();
                              },
                              child: Image.asset("assets/ic_imagepicker.png")),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
               SizedBox(
                height: screenHeight * 0.03,
              ),
               Text(
                "Full Name",
                style: TextStyle(fontSize: h14, fontWeight: FontWeight.w400),
              ),
               SizedBox(
                height: screenHeight * 0.01,
              ),
               CustomTextField(
                  fontSize: h16,
                  fontWeight: FontWeight.w400,
                  textColor: Colors.black,
                  hintTextColor: const Color(0xFFACACAF),
                  hintText: "Hoehn Doe",
                  hintFontSize: h16,
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
               SizedBox(
                height: screenHeight * 0.02,
              ),
               Text(
                "Age",
                style: TextStyle(fontSize: h14, fontWeight: FontWeight.w400),
              ),
               SizedBox(
                height: screenHeight * 0.01,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color(0xFFE3E5E5),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 19.5),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    underline: const SizedBox(),
                    hint:  Text(
                      "Age",
                      style: TextStyle(
                        fontSize: h16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFFACACAF),
                      ),
                    ),
                    icon: Image.asset('assets/Shape.png'),
                    iconSize: 24,
                    value: selectedAge,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedAge = newValue;
                      });
                    },
                    items: age.map<DropdownMenuItem<String>>((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                  ),
                ),
              ),
               SizedBox(
                height: screenHeight * 0.025,
              ),
               Text(
                "Occupation",
                style: TextStyle(fontSize: h14, fontWeight: FontWeight.w400),
              ),
               SizedBox(
                height: screenHeight * 0.01,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color(0xFFE3E5E5),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 19.5),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    underline: const SizedBox(),
                    hint:  Text(
                      "Occupation",
                      style: TextStyle(
                        fontSize: h16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFFACACAF),
                      ),
                    ),
                    icon: Image.asset('assets/Shape.png'),
                    iconSize: 24,
                    value: selectedOccu,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedOccu = newValue;
                      });
                    },
                    items:
                        occupation.map<DropdownMenuItem<String>>((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                  ),
                ),
              ),
               SizedBox(
                height: screenHeight * 0.025,
              ),
               Text(
                "Changes Passwords",
                style: TextStyle(fontSize: h14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 8,
              ),
               CustomTextField(
                  fontSize: h16,
                  fontWeight: FontWeight.w400,
                  textColor: Colors.black,
                  hintTextColor: const Color(0xFFACACAF),
                  hintText: "Old Password",
                  hintFontSize: h16,
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
               SizedBox(
                height:screenHeight * 0.01,
              ),
               CustomTextField(
                  fontSize: h16,
                  fontWeight: FontWeight.w400,
                  textColor: Colors.black,
                  hintTextColor: const Color(0xFFACACAF),
                  hintText: "New  Password",
                  hintFontSize: h16,
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
               SizedBox(
                height: screenHeight * 0.01,
              ),
               CustomTextField(
                  fontSize: h16,
                  fontWeight: FontWeight.w400,
                  textColor: Colors.black,
                  hintTextColor: const Color(0xFFACACAF),
                  hintText: "Confirm  Password",
                  hintFontSize: h16,
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
               SizedBox(
                height:screenHeight * 0.01,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color(0xFFE3E5E5),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 19.5),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    underline: const SizedBox(),
                    hint:  Text(
                      "Additional Health Information",
                      style: TextStyle(
                          fontSize: h16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFFACACAF)),
                    ),
                    icon: Image.asset('assets/Shape.png'),
                    iconSize: 24,
                    value: selectedOccu,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedOccu = newValue;
                      });
                    },
                    items:
                        occupation.map<DropdownMenuItem<String>>((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                  ),
                ),
              ),
               SizedBox(
                height: screenHeight * 0.02,
              ),
               Text(
                "You can update your profile photo and personal details here",
                style: TextStyle(fontSize: h14, fontWeight: FontWeight.w400),
              ),
               SizedBox(
                height: screenHeight * 0.02,
              ),
               Text(
                "Chronic illnesses",
                style: TextStyle(fontSize: h14, fontWeight: FontWeight.w400),
              ),
               SizedBox(
                height: screenHeight * 0.01,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color(0xFFE3E5E5),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 19.5),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    underline: const SizedBox(),
                    hint:  Text(
                      "Choose from list",
                      style: TextStyle(
                          fontSize: h16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFFACACAF)),
                    ),
                    icon: Image.asset('assets/Shape.png'),
                    iconSize: 24,
                    value: selectedChronic,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedChronic = newValue;
                      });
                    },
                    items:
                        chronicIllness.map<DropdownMenuItem<String>>((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                  ),
                ),
              ),
               SizedBox(
                height: screenHeight * 0.01,
              ),
                CustomTextField(
                  fontSize: h16,
                  fontWeight: FontWeight.w400,
                  textColor: Colors.black,
                  hintTextColor: const Color(0xFFACACAF),
                  hintText: "Specify your illnesses",
                  hintFontSize: h16,
                  hintFontWeight: FontWeight.w400,
                  filled: true,
                  maxLines: 8,
                  fillColor: const Color.fromARGB(255, 255, 254, 254),
                  enableBorderRadius: const BorderRadius.all(Radius.circular(8)),
                  enableBorderColor: const Color(0xFFE3E5E5),
                  enableBorderWidth: 1,
                  focusedBorderColor: const Color(0xFFE3E5E5),
                  focusedBorderRadius: const BorderRadius.all(Radius.circular(8)),
                  focusedBorderWidth: 1, onFieldSubmitted: (value) {  },
                ),
               SizedBox(
                height: screenHeight * 0.02,
              ),
                Text(
                "Are you on any medications ?",
                style: TextStyle(fontSize: h14, fontWeight: FontWeight.w400),
              ),
                SizedBox(
                height: screenHeight * 0.01,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color(0xFFE3E5E5),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 19.5),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    underline: const SizedBox(),
                    hint:  Text(
                      "Choose from list",
                      style: TextStyle(
                          fontSize: h16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFFACACAF)),
                    ),
                    icon: Image.asset('assets/Shape.png'),
                    iconSize: 24,
                    value: selectedMedications,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedMedications = newValue;
                      });
                    },
                    items:
                        medications.map<DropdownMenuItem<String>>((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                  ),
                ),
              ),
               SizedBox(
                height: screenHeight * 0.01,
              ),
              CustomTextField(
                  fontSize: h16,
                  fontWeight: FontWeight.w400,
                  textColor: Colors.black,
                  hintTextColor: const Color(0xFFACACAF),
                  hintText: "Type response here",
                  hintFontSize: h16,
                  hintFontWeight: FontWeight.w400,
                  filled: true,
                  maxLines: 8,
                  fillColor: const Color.fromARGB(255, 255, 254, 254),
                  enableBorderRadius: const BorderRadius.all(Radius.circular(8)),
                  enableBorderColor: const Color(0xFFE3E5E5),
                  enableBorderWidth: 1,
                  focusedBorderColor: const Color(0xFFE3E5E5),
                  focusedBorderRadius: const BorderRadius.all(Radius.circular(8)),
                  focusedBorderWidth: 1,
                   onFieldSubmitted: (value) { 
                    
                    },
                ),
               SizedBox(
                height: screenHeight * 0.02,
              ),
               Text(
                "Tobacco use",
                style: TextStyle(fontSize: h14, fontWeight: FontWeight.w400),
              ),
               SizedBox(
                height: screenHeight * 0.01,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color(0xFFE3E5E5),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 19.5),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    underline: const SizedBox(),
                    hint:  Text(
                      "Choose from list",
                      style: TextStyle(
                          fontSize: h16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFFACACAF)),
                    ),
                    icon: Image.asset('assets/Shape.png'),
                    iconSize: 24,
                    value: selectedTobacco,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedTobacco = newValue;
                      });
                    },
                    items: tobacco.map<DropdownMenuItem<String>>((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                  ),
                ),
              ),
               SizedBox(
                height: screenHeight * 0.02,
              ),
               Text(
                "Alcohol consumption",
                style: TextStyle(fontSize: h14, fontWeight: FontWeight.w400),
              ),
               SizedBox(
                height: screenHeight * 0.01,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color(0xFFE3E5E5),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 19.5),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    underline: const SizedBox(),
                    hint:  Text(
                      "Choose from list",
                      style: TextStyle(
                          fontSize:h16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFFACACAF)),
                    ),
                    icon: Image.asset('assets/Shape.png'),
                    iconSize: 24,
                    value: selectedAlocohol,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedAlocohol = newValue;
                      });
                    },
                    items: alcohol.map<DropdownMenuItem<String>>((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                  ),
                ),
              ),
               SizedBox(
                height: screenHeight * 0.02,
              ),
               Text(
                "Are you on any allergies ?",
                style: TextStyle(fontSize: h14, fontWeight: FontWeight.w400),
              ),
               SizedBox(
                height: screenHeight * 0.01,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color(0xFFE3E5E5),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 19.5),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    underline: const SizedBox(),
                    hint:  Text(
                      "Choose from list",
                      style: TextStyle(
                          fontSize: h16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFFACACAF)),
                    ),
                    icon: Image.asset('assets/Shape.png'),
                    iconSize: 24,
                    value: selectedOccu,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedOccu = newValue;
                      });
                    },
                    items:
                        occupation.map<DropdownMenuItem<String>>((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                  ),
                ),
              ),
               SizedBox(
                height: screenHeight * 0.01,
              ),
               CustomTextField(
                  fontSize: h16,
                  fontWeight: FontWeight.w400,
                  textColor: Colors.black,
                  hintTextColor: const Color(0xFFACACAF),
                  hintText: "Specify your allergy",
                  hintFontSize: h16,
                  hintFontWeight: FontWeight.w400,
                  filled: true,
                  maxLines: 8,
                  fillColor: const Color.fromARGB(255, 255, 254, 254),
                  enableBorderRadius: const BorderRadius.all(Radius.circular(8)),
                  enableBorderColor: const Color(0xFFE3E5E5),
                  enableBorderWidth: 1,
                  focusedBorderColor: const Color(0xFFE3E5E5),
                  focusedBorderRadius: const BorderRadius.all(Radius.circular(8)),
                  focusedBorderWidth: 1, onFieldSubmitted: (value) {  },
                ),
               SizedBox(
                height: screenHeight * 0.02,
              ),
               Text(
                "Any past surgeries or physical injuries ?",
                style: TextStyle(fontSize: h14, fontWeight: FontWeight.w400),
              ),
               SizedBox(
                height:screenHeight * 0.01,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color(0xFFE3E5E5),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 19.5),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    underline: const SizedBox(),
                    hint:  Text(
                      "Choose from list",
                      style: TextStyle(
                          fontSize: h16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFFACACAF)),
                    ),
                    icon: Image.asset('assets/Shape.png'),
                    iconSize: 24,
                    value: selectedOccu,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedOccu = newValue;
                      });
                    },
                    items:
                        occupation.map<DropdownMenuItem<String>>((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                  ),
                ),
              ),
               SizedBox(
                height: screenHeight * 0.01,
              ),
               CustomTextField(
                  fontSize: h16,
                  fontWeight: FontWeight.w400,
                  textColor: Colors.black,
                  hintTextColor: const Color(0xFFACACAF),
                  hintText: "Type response here",
                  hintFontSize: h16,
                  hintFontWeight: FontWeight.w400,
                  filled: true,
                  maxLines: 8,
                  fillColor: const Color.fromARGB(255, 255, 254, 254),
                  enableBorderRadius: const BorderRadius.all(Radius.circular(8)),
                  enableBorderColor: const Color(0xFFE3E5E5),
                  enableBorderWidth: 1,
                  focusedBorderColor: const Color(0xFFE3E5E5),
                  focusedBorderRadius: const BorderRadius.all(Radius.circular(8)),
                  focusedBorderWidth: 1, onFieldSubmitted: (value) {  },
                ),
               SizedBox(
                height: screenHeight * 0.02,
              ),
               Text(
                "Any past mental health issues ?",
                style: TextStyle(fontSize: h14, fontWeight: FontWeight.w400),
              ),
               SizedBox(
                height: screenHeight * 0.01,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color(0xFFE3E5E5),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 19.5),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    underline: const SizedBox(),
                    hint:  Text(
                      "Choose from list",
                      style: TextStyle(
                          fontSize: h16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFFACACAF)),
                    ),
                    icon: Image.asset('assets/Shape.png'),
                    iconSize: 24,
                    value: selectedTobacco,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedTobacco = newValue;
                      });
                    },
                    items: tobacco.map<DropdownMenuItem<String>>((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                  ),
                ),
              ),
               SizedBox(
                height: screenHeight * 0.02,
              ),
               Text(
                "Any dietary restrictions ?",
                style: TextStyle(fontSize: h14, fontWeight: FontWeight.w400),
              ),
               SizedBox(
                height: screenHeight * 0.01,
              ),
               CustomTextField(
                  fontSize: h16,
                  fontWeight: FontWeight.w400,
                  textColor: Colors.black,
                  hintTextColor: const Color(0xFFACACAF),
                  hintText: "Type response here",
                  hintFontSize: h16,
                  hintFontWeight: FontWeight.w400,
                  filled: true,
                  maxLines: 8,
                  fillColor: const Color.fromARGB(255, 255, 254, 254),
                  enableBorderRadius: const BorderRadius.all(Radius.circular(8)),
                  enableBorderColor: const Color(0xFFE3E5E5),
                  enableBorderWidth: 1,
                  focusedBorderColor: const Color(0xFFE3E5E5),
                  focusedBorderRadius: const BorderRadius.all(Radius.circular(8)),
                  focusedBorderWidth: 1, onFieldSubmitted: (value) {  },
                ),
               SizedBox(
                height: screenHeight * 0.02,
              ),
               Text(
                "Pregnancy or Postpartum:?",
                style: TextStyle(fontSize: h14, fontWeight: FontWeight.w400),
              ),
               SizedBox(
                height: screenHeight * 0.01,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color(0xFFE3E5E5),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 19.5),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    underline: const SizedBox(),
                    hint:  Text(
                      "Choose from list",
                      style: TextStyle(
                          fontSize: h16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFFACACAF)),
                    ),
                    icon: Image.asset('assets/Shape.png'),
                    iconSize: 24,
                    value: selectedTobacco,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedTobacco = newValue;
                      });
                    },
                    items: tobacco.map<DropdownMenuItem<String>>((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                  ),
                ),
              ),
               SizedBox(
                height: screenHeight * 0.02,
              ),
               Text(
                "Menopause ?",
                style: TextStyle(fontSize: h14, fontWeight: FontWeight.w400),
              ),
               SizedBox(
                height: screenHeight * 0.01,
              ),
               CustomTextField(
                  fontSize: h16,
                  fontWeight: FontWeight.w400,
                  textColor: Colors.black,
                  hintTextColor: const Color(0xFFACACAF),
                  hintText: "Type response here",
                  hintFontSize:h16,
                  hintFontWeight: FontWeight.w400,
                  filled: true,
                  maxLines: 8,
                  fillColor: const Color.fromARGB(255, 255, 254, 254),
                  enableBorderRadius: const BorderRadius.all(Radius.circular(8)),
                  enableBorderColor: const Color(0xFFE3E5E5),
                  enableBorderWidth: 1,
                  focusedBorderColor: const Color(0xFFE3E5E5),
                  focusedBorderRadius: const BorderRadius.all(Radius.circular(8)),
                  focusedBorderWidth: 1, onFieldSubmitted: (value) {  },
                ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future <XFile?>pickerImageGallery() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        selectedImg = File(image.path);
      });
    } else {
      CircleAvatar(
        radius: 78,
        backgroundImage: selectedImg != null
            ? FileImage(selectedImg!)
            : const AssetImage("assets/img_profile.png") as ImageProvider,
      );
    }
    return null;
  }
}
