
import 'package:flutter/material.dart';
class ElevatedButtonThemee{


  static final elevatedButtonThemeLight=ElevatedButtonThemeData(
   style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.red,
      side:const BorderSide(color: Colors.blue,),
      padding:const EdgeInsets.symmetric(vertical: 18),
      textStyle:const TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600),
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12)))
   )

  );
}