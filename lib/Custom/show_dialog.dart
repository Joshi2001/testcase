import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testcase/view/auth/login.dart';
import 'package:testcase/view_model/user_view_model.dart';

class LogOutDialog extends StatelessWidget{


  
  const LogOutDialog({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    final userPrefernece = Provider.of<UserViewModel>(context);
   return  Dialog(
    child: Container(
decoration: const BoxDecoration(
  color: Color(0xFF6154D5),
  borderRadius: BorderRadius.all(Radius.circular(15)),
),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          const Text("Are you sure you are log out",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child:   Padding(
                  padding: const EdgeInsets.only(top: 10,right: 20,left: 20,bottom: 10),
                  child: GestureDetector(
                    onTap: () {
                       Navigator.of(context).pop();
                    },
                    child: const Text("Cancle",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Color(0xFF272256)),)),
                )),
             Container(
               decoration: const BoxDecoration(
                  color: Color(0xFF272256),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),child:  Padding(
                  padding: const EdgeInsets.only(top: 10,right: 20,left: 20,bottom: 10),
                  child: GestureDetector(
                    onTap:(){
                       userPrefernece.remove();
                       Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const LogIn()),
                  );
                    }, child: const Text("log out",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),)),
                )),
        
          ],)
          
        ],),
      )
    ),
   );
  }
  

}
