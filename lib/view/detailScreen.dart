// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:testcase/Custom/mediaQuari.dart';
import 'package:testcase/model/chatlist_model.dart';

class DetailScreen extends StatelessWidget {
  final ChatModel? chatModel;
  ChatModel get chatModelOrDefault => chatModel ?? ChatModel();

  const DetailScreen({super.key,required this.chatModel});

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
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Image.asset('assets/ic_back.png')),
        backgroundColor: Colors.white,
        shape: Border(
            bottom: BorderSide(
          color: Colors.black.withOpacity(0.1),
          width: 1.0,
        )),
        title:  Text(
          'Detail',
          style: TextStyle(fontSize: h18, fontWeight: FontWeight.w500),
        ),
      ),
      body:
      SingleChildScrollView(
        child: Column(children: [
           SizedBox( height: screenHeight*0.02,),
          Center(child: Text( chatModel?.category ?? 'Photo'.toString(),style:  TextStyle(fontSize: h18,fontWeight: FontWeight.w700,color: Colors.black),)),
           SizedBox( height: screenHeight*0.03,),
         SizedBox(
            width: screenWidth * 0.8,
            height: screenHeight * 0.3,
           child: Image.network(
                chatModel?.image ?? 'https://www.example.com/default_image.jpg', 
                
              ),
         ),
           SizedBox(height:screenHeight*0.05,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
            children: [
              SizedBox(
                width: screenWidth * 0.6,
                child: Text(
                   chatModel?.title ?? 'Title'.toString(),style:  TextStyle(fontSize: h16,fontWeight: FontWeight.w600,color: Colors.black),),
              ),
                Text( chatModel?.price?.toString() ?? 'Price',style:  TextStyle(fontSize: h16,fontWeight: FontWeight.w800,color: Colors.black),),
            ],
          ),
         
         const SizedBox( height: 20,),
        SizedBox(
          width: screenWidth * 0.8,
          child: Text( chatModel?.description ?? 'Description'.toString(),style:  TextStyle(fontSize: h16,fontWeight: FontWeight.w400,color: Colors.black),)),
          SizedBox( height: screenHeight * 0.1,),
        ],),
        
      ),
      );
  }
}