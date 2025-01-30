import 'package:flutter/material.dart';
import 'package:testcase/model/chatlist_model.dart';

class DetailScreen extends StatelessWidget {
  final ChatModel? chatModel;
  ChatModel get chatModelOrDefault => chatModel ?? ChatModel();

  const DetailScreen({super.key,required this.chatModel});

  @override
  Widget build(BuildContext context) {
   double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
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
        title: const Text(
          'Detail',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      body:
      SingleChildScrollView(
        child: Column(children: [
          const SizedBox( height: 20,),
          Center(child: Text( chatModel?.category ?? 'Photo'.toString(),style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.black),)),
          const SizedBox( height: 20,),
         SizedBox(
            width: screenWidth * 0.8,
            height: screenHeight * 0.4,
           child: Image.network(
                chatModel?.image ?? 'https://www.example.com/default_image.jpg', 
                
              ),
         ),
          const SizedBox( height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
            children: [
              SizedBox(
                width: screenWidth * 0.5,
                child: Text(
                   chatModel?.title ?? 'Title'.toString(),style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),),
              ),
                Text( chatModel?.price?.toString() ?? 'Price',style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w800,color: Colors.black),),
            ],
          ),
         
         const SizedBox( height: 20,),
        SizedBox(
          width: screenWidth * 0.8,
          child: Text( chatModel?.description ?? 'Description'.toString(),style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.black),)),
          SizedBox( height: screenHeight * 0.1,),
        ],),
        
      ),
      );
  }
}