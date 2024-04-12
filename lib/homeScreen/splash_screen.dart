import 'dart:async';
import 'package:flutter/material.dart';
import 'home.dart';
class splash_screen extends StatefulWidget {
  static const String routeName='splash';

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 2),(){
      Navigator.pushReplacementNamed(context, home.routeName);
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/splash.png', height: double.infinity,
      width: double.infinity,fit: BoxFit.fill,
    );
  }
}