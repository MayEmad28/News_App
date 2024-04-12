import 'package:flutter/material.dart';
import 'package:news/api/api_manager.dart';
import 'package:news/model/newsResponse.dart';
import 'package:news/model/sourceResponse.dart';
import 'package:news/my_theme/my_theme.dart';
import 'package:news/news/article_widget.dart';
class news_list extends StatefulWidget {
Source source;
news_list({required this.source});

  @override
  State<news_list> createState() => _news_listState();
}

class _news_listState extends State<news_list> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsResponse>(
      future: ApiManager.getNewsById(widget.source.id?? ''),
        builder: (context,snapshot){
        if(snapshot.connectionState==ConnectionState.waiting){
          return Center(
            child: CircularProgressIndicator(
              color: my_theme.greencolor,
            ),
          );
        }
        else if(snapshot.hasError){
          return Column(
            children: [
              Text('SomeThing went wrong'),
              ElevatedButton(onPressed: (){
                ApiManager.getNewsById(widget.source.id?? '');
                setState(() {

                });
              }, child: Text('Try Again'))
            ],
          );
        }
        if(snapshot.data!.status =='error'){
          return Column(
            children: [
              Text(snapshot.data!.message!),
              ElevatedButton(onPressed: (){
                ApiManager.getNewsById(widget.source.id?? '');
                setState(() {

                });
              }, child: Text('Try Again'))
            ],
          );
        }
        var newsList=snapshot.data!.articles!;
        return ListView.builder(itemCount:newsList.length ,
            itemBuilder: (context,index){
          return article_widget(article:newsList[index] );
        });
        }
    );
  }
}
