
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../signin_screen/Signin_screen.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: Column(

        children: [
          Column(children: [
            const SizedBox(height: 20,),
            Center(child: Image.asset("assets/images/profile.jpeg",height: 100,width:100,fit: BoxFit.fill,)),
            SizedBox(height: 20,),
            Text("Answar Uddin",style: TextStyle(fontSize: 21),),
            Text("answarbd2020@gmail.com",style: TextStyle(fontSize: 21),),
          ],),


          SizedBox(height: 50,),

          Text("Personal Information",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
          const Padding(
            padding: EdgeInsets.only(left: 60,right: 60),
            child: Divider(),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              Text("Number : 017000000000",style: TextStyle(fontSize: 21),),
              Text("ID : 000012#1",style: TextStyle(fontSize: 21),),
              SizedBox(height: 5,),
              Text("Gender : Male",style: TextStyle(fontSize: 21),),
              SizedBox(height: 5,),
              Text("Address : Banasree,Dhaka,Bangladesh",style: TextStyle(fontSize: 21),),
            ],
          ),
          SizedBox(height: 20,),
          InkWell(
              onTap: (){
                Get.offAll(()=>const  LoginPage());
              },
              child: const Text("Logout",style: TextStyle(fontSize: 21),))
        ],
      ),
    );
  }
}