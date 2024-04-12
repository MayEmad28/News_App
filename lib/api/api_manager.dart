import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news/api/api_const.dart';
import 'package:news/model/sourceResponse.dart';
import 'package:news/model/newsResponse.dart';


class ApiManager{

 static Future<SourceResponse> getSources(String category)async{
  Uri url=Uri.http(api_const.baseUri,api_const.sourceApi,{
    'apiKey':'d632a8a3bd604e8bbb4ef7a413ec854d',
    'category':category
  });
  try {
    var response = await http.get(url);
    var body = response.body; //string
    var json = jsonDecode(body); //string to json
    return SourceResponse.fromJson(json);
  }
  catch(e){
    throw e;
  }//json to object
}
static Future<NewsResponse> getNewsById(String id) async{
   Uri url=Uri.http(api_const.baseUri,api_const.newsApi,{
     'apiKey':'d632a8a3bd604e8bbb4ef7a413ec854d',
     'sources':id

   });
   try {
     var response = await http.get(url);
     var body = response.body;
     var json = jsonDecode(body);
     return NewsResponse.fromJson(json);
   }
   catch(e){
     throw e;
   }
}

}