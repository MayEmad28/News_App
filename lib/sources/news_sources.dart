import 'package:flutter/material.dart';
import 'package:news/api/api_manager.dart';
import 'package:news/category/category_item_widget.dart';
import 'package:news/model/sourceResponse.dart';
import 'package:news/my_theme/my_theme.dart';
import 'package:news/sources/tabs.dart';

class news_sources extends StatefulWidget {
 static String routeName='news_sources';
 category_DM category;
 news_sources({required this.category});
  @override
  State<news_sources> createState() => _news_sourcesState();
}

class _news_sourcesState extends State<news_sources> {
  @override
  Widget build(BuildContext context) {
    return
      FutureBuilder<SourceResponse>(
            builder: (context,snapshot){
              if(snapshot.connectionState==ConnectionState.waiting){
                return Center(
                  child: CircularProgressIndicator(color: my_theme.greencolor),
                );
              }
              else if(snapshot.hasError){
                return Column(
                  children: [
                    Text('Something went wrong'),
                    ElevatedButton(onPressed: (){
                      ApiManager.getSources(widget.category.id);
                      setState(() {

                      });

                    }, child: Text('Try Again'))
                  ],
                );
              }
              //server
              //error
              if(snapshot.data!.status=='error'){
               return Column(
                  children: [
                    Text(snapshot.data!.message!),
                    ElevatedButton(onPressed: (){
                      ApiManager.getSources(widget.category.id);
                      setState(() {

                      });
                    }, child: Text('Try Again'),)
                  ],
                );
              }
              //success
              var sourceList=snapshot.data?.sources?? [];
              return tabs(sourceList: sourceList);
            },
            future: ApiManager.getSources(widget.category.id),
          );
  }
}
