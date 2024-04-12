import 'package:flutter/material.dart';
import 'package:news/my_theme/my_theme.dart';
class drawer extends StatelessWidget {
 static int categories=0;
 static int settings=1;
  Function onDrawerClick;
  drawer({required this.onDrawerClick});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Text('News App!',style: Theme.of(context).textTheme.titleMedium,textAlign: TextAlign.center,),
            color: my_theme.greencolor,
            padding: EdgeInsets.all(80),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: InkWell(
              onTap: (){
                onDrawerClick(categories);
              },
              child: Row(
                children: [
                  Icon(Icons.list,size: 30,),
                  SizedBox(width: 7,),
                  Text('Categories',style: Theme.of(context).textTheme.titleLarge,)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: (){
                onDrawerClick(settings);
              },
              child: Row(
                children: [
                  Icon(Icons.settings,size: 30,),
                  SizedBox(width: 7,),
                  Text('Settings',style: Theme.of(context).textTheme.titleLarge,)
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
