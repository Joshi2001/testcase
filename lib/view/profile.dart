
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:testcase/Custom/customtextfield.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  File? selectedImg;
  String? selectedValue;
  String? selectedOccu;
  String? selectedAge;
  String? selectedTobacco;
  List<String> yesNo = ["Yes", "No"];

  List<String> occupation = [
    'Software Developer',
    'Doctor',
    'Teacher',
    'Engineer',
    'Nurse',
    'Artist',
    'Photographer',
    'Graphic Designer',
    'Chef',
    'Scientist',
    'Lawyer',
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
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30"
  ];

  @override
  Widget build(BuildContext context) {
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
        title: const Text(
          'Profile',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFF6154D5),
                borderRadius: BorderRadius.all(Radius.circular(13)),
              ),
              child: const Padding(
                padding: EdgeInsets.only(
                    left: 14.0, right: 14, top: 5.5, bottom: 5.5),
                child: Text(
                  "Save",
                  style: TextStyle(
                      fontSize: 14,
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
              const SizedBox(
                height: 30,
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
                    hint: const Text(
                      "Personal info",
                      style: TextStyle(
                          fontSize: 16,
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
              const SizedBox(
                height: 8,
              ),
              const Text(
                  'You can update your profile photo and personal details here',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF6B678B),
                  )),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  height: 156,
                  width: 156,
                  decoration: const BoxDecoration(),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 78,
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
                          height: 31,
                          width: 31,
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
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Full Name",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 8,
              ),
               CustomTextField(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  textColor: Colors.black,
                  hintTextColor: const Color(0xFFACACAF),
                  hintText: "Hoehn Doe",
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
                "Age",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 8,
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
                    hint: const Text(
                      "Age",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFACACAF),
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
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Occupation",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 8,
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
                    hint: const Text(
                      "Occupation",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFACACAF),
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
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Changes Passwords",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 8,
              ),
               CustomTextField(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  textColor: Colors.black,
                  hintTextColor: const Color(0xFFACACAF),
                  hintText: "Old Password",
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
                height: 8,
              ),
               CustomTextField(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  textColor: Colors.black,
                  hintTextColor: const Color(0xFFACACAF),
                  hintText: "New  Password",
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
                height: 8,
              ),
               CustomTextField(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  textColor: Colors.black,
                  hintTextColor: const Color(0xFFACACAF),
                  hintText: "Confirm  Password",
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
                    hint: const Text(
                      "Additional Health Information",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFACACAF)),
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
              const SizedBox(
                height: 8,
              ),
              const Text(
                "You can update your profile photo and personal details here",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Chronic illnesses",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 8,
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
                    hint: const Text(
                      "Choose from list",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFACACAF)),
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
              const SizedBox(
                height: 8,
              ),
                CustomTextField(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  textColor: Colors.black,
                  hintTextColor: const Color(0xFFACACAF),
                  hintText: "Specify your illnesses",
                  hintFontSize: 16,
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
                height: 20,
              ),
              const Text(
                "Are you on any medications ?",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 8,
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
                    hint: const Text(
                      "Choose from list",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFACACAF)),
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
              const SizedBox(
                height: 8,
              ),
              CustomTextField(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  textColor: Colors.black,
                  hintTextColor: const Color(0xFFACACAF),
                  hintText: "Type response here",
                  hintFontSize: 16,
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
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Tobacco use",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 8,
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
                    hint: const Text(
                      "Choose from list",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFACACAF)),
                    ),
                    icon: Image.asset('assets/Shape.png'),
                    iconSize: 24,
                    value: selectedTobacco,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedTobacco = newValue;
                      });
                    },
                    items: yesNo.map<DropdownMenuItem<String>>((String item) {
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
                "Alcohol consumption",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 8,
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
                    hint: const Text(
                      "Choose from list",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFACACAF)),
                    ),
                    icon: Image.asset('assets/Shape.png'),
                    iconSize: 24,
                    value: selectedTobacco,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedTobacco = newValue;
                      });
                    },
                    items: yesNo.map<DropdownMenuItem<String>>((String item) {
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
                "Are you on any allergies ?",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 8,
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
                    hint: const Text(
                      "Choose from list",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFACACAF)),
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
              const SizedBox(
                height: 8,
              ),
               CustomTextField(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  textColor: Colors.black,
                  hintTextColor: const Color(0xFFACACAF),
                  hintText: "Specify your allergy",
                  hintFontSize: 16,
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
                height: 20,
              ),
              const Text(
                "Any past surgeries or physical injuries ?",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 8,
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
                    hint: const Text(
                      "Choose from list",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFACACAF)),
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
              const SizedBox(
                height: 8,
              ),
               CustomTextField(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  textColor: Colors.black,
                  hintTextColor: const Color(0xFFACACAF),
                  hintText: "Type response here",
                  hintFontSize: 16,
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
                height: 20,
              ),
              const Text(
                "Any past mental health issues ?",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 8,
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
                    hint: const Text(
                      "Choose from list",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFACACAF)),
                    ),
                    icon: Image.asset('assets/Shape.png'),
                    iconSize: 24,
                    value: selectedTobacco,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedTobacco = newValue;
                      });
                    },
                    items: yesNo.map<DropdownMenuItem<String>>((String item) {
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
                "Any dietary restrictions ?",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 8,
              ),
               CustomTextField(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  textColor: Colors.black,
                  hintTextColor: const Color(0xFFACACAF),
                  hintText: "Type response here",
                  hintFontSize: 16,
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
                height: 20,
              ),
              const Text(
                "Pregnancy or Postpartum:?",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 8,
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
                    hint: const Text(
                      "Choose from list",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFACACAF)),
                    ),
                    icon: Image.asset('assets/Shape.png'),
                    iconSize: 24,
                    value: selectedTobacco,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedTobacco = newValue;
                      });
                    },
                    items: yesNo.map<DropdownMenuItem<String>>((String item) {
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
                "Menopause ?",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 8,
              ),
               CustomTextField(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  textColor: Colors.black,
                  hintTextColor: const Color(0xFFACACAF),
                  hintText: "Type response here",
                  hintFontSize: 16,
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
