import 'package:flutter/material.dart';

class my_theme{

 static Color redcolor=Color(0xffC91C22);
 static Color whitecolor=Color(0xffFFFFFF);
 static Color bluecolor=Color(0xff003E90);
 static Color pinkcolor=Color(0xffED1E79);
 static Color orangecolor=Color(0xffCF7E48);
 static Color lightBluecolor=Color(0xff4882CF);
 static Color yellowcolor=Color(0xffF2D352);
 static Color greencolor=Color(0xff39A552);
 static Color blackcolor=Color(0xff303030);
 static Color lightGraykcolor=Color(0xff79828B);
 static Color graycolor=Color(0xff42505C);

static ThemeData lightMode=ThemeData(
 textTheme: TextTheme(
  titleLarge: TextStyle(color:blackcolor,fontSize: 24,fontWeight: FontWeight.w700),
  titleSmall: TextStyle(color: lightGraykcolor,fontWeight: FontWeight.w500,fontSize: 14 ),
  titleMedium : TextStyle(color: whitecolor,fontWeight: FontWeight.w400,fontSize: 22),
 ),
appBarTheme: AppBarTheme(
 centerTitle: true,
 color: greencolor,

 shape: RoundedRectangleBorder(
  borderRadius:BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft:Radius.circular(30) ) ,
 ),
)
);
}