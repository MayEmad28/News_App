import 'package:flutter/material.dart';
import 'package:news/model/sourceResponse.dart';
import 'package:news/my_theme/my_theme.dart';
class tab_item extends StatelessWidget {
  Source source;
bool isSelected;
tab_item({required this.isSelected, required this.source});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(
          color:isSelected? my_theme.greencolor : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: my_theme.greencolor,
          width: 2
        )
      ),
      child: Text(source.name!,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
          color: isSelected? my_theme.whitecolor : my_theme.greencolor,
          fontWeight: FontWeight.w500
        )
        ,),
    );
  }
}
