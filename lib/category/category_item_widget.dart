import 'package:flutter/material.dart';
import 'package:news/my_theme/my_theme.dart';
class category_item_widget extends StatelessWidget {
category_DM cat;
  int index;
category_item_widget({required this.cat,required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(cat.imagePath),
          Text(cat.title,style: Theme.of(context).textTheme.titleMedium,)
        ],
      ),
      decoration: BoxDecoration(
          color: cat.color,
        borderRadius: BorderRadius.only(
          topLeft:Radius.circular(20),
          topRight:Radius.circular(20),
          bottomRight: Radius.circular(index%2==0? 20:0),
          bottomLeft: Radius.circular(index%2!=0? 20:0),
        )
      ),
    );
  }
}
class category_DM{
  String id,title,imagePath;
  Color color;
  category_DM({required this.title,required this.id,required this.color,required this.imagePath});
  static List<category_DM> fillCategories(){
    return
        [
          category_DM(title: 'Sports', id: 'sports', color: my_theme.redcolor, imagePath: 'assets/images/ball.png'),
          category_DM(title: 'General', id: 'general', color: my_theme.bluecolor, imagePath: 'assets/images/Politics.png'),
          category_DM(title: 'Health', id: 'health', color: my_theme.pinkcolor, imagePath: 'assets/images/health.png'),
          category_DM(title: 'Business', id: 'business', color: my_theme.orangecolor, imagePath: 'assets/images/bussines.png'),
          category_DM(title: 'Entertainment', id: 'entertainment', color: my_theme.lightBluecolor, imagePath: 'assets/images/environment.png'),
          category_DM(title: 'Science', id: 'science', color: my_theme.yellowcolor, imagePath: 'assets/images/science.png'),
          category_DM(title: 'Technology', id: 'technology', color: Colors.greenAccent, imagePath: 'assets/images/ball.png'),

        ];
  }
}
