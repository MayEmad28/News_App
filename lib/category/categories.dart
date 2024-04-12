import 'package:flutter/material.dart';
import 'package:news/category/category_item_widget.dart';
class categories extends StatefulWidget {
 static String routeName='category_widget';
 Function onCategoryClick;
 categories({required this.onCategoryClick});
  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
 var categoryList=category_DM.fillCategories();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text('Pick your category \n of interest',style:TextStyle(
            color: Color(0xFF4F5A69),
            fontWeight: FontWeight.w700,
            fontSize:22
          ) ,),
        ),
        Expanded(
          child: GridView.builder(
            itemCount: categoryList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    widget.onCategoryClick(categoryList[index]);
                  },
                    child: category_item_widget(cat: categoryList[index],index: index,));
              }),
        ),
      ],
    );
  }
}
