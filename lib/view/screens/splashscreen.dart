
import 'dart:async';
import 'package:deals_draw_ecommerceapp/view/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

 @override
  State<SplashScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SplashScreen> {
  @override
  void initState() {
   
    super.initState();
    Timer(const Duration(seconds: 2),
     () {

      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const LoginScreen(),));
      });
  }

 

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
    
      body: Container(
        decoration:const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('Assets/images/splash.jpg',),
          fit: BoxFit.cover,
          )
        ),
        child:const Center(
          child: CircularProgressIndicator(
            color: Colors.red,
           strokeCap:StrokeCap.round ,
           
          ),
        ),
      )
   
    );
  }
}
