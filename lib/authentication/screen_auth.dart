import 'package:deals_draw_ecommerceapp/view/screens/home_screen.dart';
import 'package:deals_draw_ecommerceapp/view/screens/login_screen.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenAuth extends StatefulWidget {
  const ScreenAuth({super.key});

  @override
  State<ScreenAuth> createState() => _ScreenAuthState();
}

class _ScreenAuthState extends State<ScreenAuth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(),
       builder: (context, snapshot) {
         if(snapshot.hasData){
          return Home();
         }else{
          return LoginScreen();
         }
       },),
    );
  }
}