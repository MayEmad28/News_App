import 'package:flutter/material.dart';
import 'package:news/model/newsResponse.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:news/my_theme/my_theme.dart';

class article_widget extends StatelessWidget {
  Articles article;
  article_widget({required this.article});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.all(5),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)
            ),
            child: CachedNetworkImage(
              imageUrl: article!.urlToImage!,
              placeholder: (context, url) => CircularProgressIndicator(color: my_theme.greencolor,),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.008,
          ),
          Text(article.author?? '',style: Theme.of(context).textTheme.titleSmall,),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.005,
          ),
          Text(article.title?? '',style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w500
          ),),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.008,
          ),
          Text(article!.publishedAt!,
            textAlign: TextAlign.end,
            style: Theme.of(context).textTheme.titleSmall,)
        ],
      ),
    );
  }
}
