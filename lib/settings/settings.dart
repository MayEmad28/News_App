import 'package:flutter/material.dart';
import 'package:news/my_theme/my_theme.dart';
class settings extends StatelessWidget {
  const settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: my_theme.whitecolor,
      child: Image.asset('assets/images/pattern.png'),
    );
  }
}
