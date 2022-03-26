import 'dart:async';


import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitegrate_project/screens/Getting_started.dart';
import 'package:flutter/material.dart';

class VerifyScreen extends StatefulWidget{
  @override

  _VerifyScreenState createState() => _VerifyScreenState();

}

class _VerifyScreenState extends State<VerifyScreen>{

  final auth = FirebaseAuth.instance;
  late User user;
  late Timer timer;

  @override
  void initState(){
    print("VERIFYSTATE");
    user = auth.currentUser!;
    user.sendEmailVerification();
    print("PQR");
    timer=Timer.periodic(Duration(seconds: 5), (timer) {
      checkEmailVerified();
     });
super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:Text('An email has been sent to ${user.email} please verify'))
    );
  }

  
  Future<void> checkEmailVerified() async{
    print("123456");
    user = auth.currentUser!;
    await user.reload();
    print("ayush");
    if(user.emailVerified){
      timer.cancel();
      print("asdfghjkl");
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>GetStarted()));
      print("AFTER ROUTING");
    }
    else{

    }
  }


}