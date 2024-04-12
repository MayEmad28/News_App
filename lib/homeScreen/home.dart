import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/category/category_item_widget.dart';
import 'package:news/drawer/drawer.dart';
import 'package:news/settings/settings.dart';
import 'package:news/sources/news_sources.dart';
import '../category/categories.dart';
class home extends StatefulWidget{
  static  String routeName='home_screen';

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          child: Image.asset('assets/images/pattern.png',fit: BoxFit.fill,width: double.infinity,),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(selectedIndex==drawer.settings?
              'Settings'
            :selectedCategory==null?
            'News App!'
              :selectedCategory!.id,
              style:Theme.of(context).textTheme.titleMedium,),
          ),
          backgroundColor: Colors.transparent,
          body:
              selectedIndex==drawer.categories?
          selectedCategory==null?
              categories(onCategoryClick: onCategoryClick)
          : news_sources(category: selectedCategory!)
            :settings(),
          drawer:drawer(onDrawerClick: onDrawerClick,)
   ),
      ],
    );
  }

  category_DM? selectedCategory;
  void onCategoryClick(category_DM newCategory){
    selectedCategory=newCategory;
    setState(() {

    });
  }
  int selectedIndex=drawer.categories;
  void onDrawerClick(int selectedWidgetIndex){
    selectedIndex=selectedWidgetIndex;
    selectedCategory=null;
    Navigator.pop(context);
    setState(() {

    });
  }
}