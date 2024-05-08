import 'package:flutter/material.dart';

class TextThemee{
  static TextTheme lightTheme=TextTheme(
  headlineLarge:const TextStyle().copyWith(fontSize: 35, fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.7)),
  headlineMedium:const  TextStyle().copyWith(fontSize: 24, fontWeight: FontWeight.w600,color: Colors.black),
  headlineSmall: const TextStyle().copyWith(fontSize: 18, fontWeight: FontWeight.w600,color: Colors.black) ,

  titleLarge:const TextStyle().copyWith(fontSize: 36.0, fontWeight: FontWeight.w300,color: Colors.white) ,
  titleMedium:const TextStyle().copyWith(fontSize: 25.0, fontWeight: FontWeight.w500,color: Colors.white) ,
  titleSmall:const TextStyle().copyWith(fontSize: 17.0, fontWeight: FontWeight.w500,color: Colors.white) ,

  bodyLarge:const  TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500,color: Colors.black) ,
  bodyMedium:const  TextStyle().copyWith(fontSize: 46.0, fontWeight: FontWeight.normal,color: Colors.black) ,
  bodySmall:const  TextStyle().copyWith(fontSize: 22.0, fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.5)) ,

  labelLarge:const TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.normal,color: Colors.black),
  labelMedium:const TextStyle().copyWith(fontSize: 22.0, fontWeight: FontWeight.normal,color: Colors.black.withOpacity(0.3)) ,
  



  );
}