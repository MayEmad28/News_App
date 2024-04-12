import 'package:flutter/material.dart';
import 'package:news/homeScreen/home.dart';
import 'package:news/homeScreen/splash_screen.dart';
import 'package:news/my_theme/my_theme.dart';
import 'package:news/sources/news_sources.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    initialRoute: home.routeName,
    routes: {
      home.routeName:(context)=>home(),
      splash_screen.routeName:(context)=>splash_screen()
    },
    theme: my_theme.lightMode,

  );
  }

}
