
import 'package:deals_draw_ecommerceapp/utils/theme/custome_theme/elevatedbutton_theme.dart';
import 'package:deals_draw_ecommerceapp/utils/theme/custome_theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AppThemee{

  static ThemeData lightTheme =ThemeData(
   useMaterial3: true,
   brightness: Brightness.light,
   scaffoldBackgroundColor: Colors.white,
   fontFamily: GoogleFonts.roboto().fontFamily,
   primaryColor:Colors.white ,
   textTheme: TextThemee.lightTheme,
   elevatedButtonTheme: ElevatedButtonThemee.elevatedButtonThemeLight,
 
  );


 
}