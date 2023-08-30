import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app_with_api/Data/Models/get_news_modle.dart';

class GetNewsRepo {
  
  Future<GetNewsModel?> getNews() async {
    
    try {
      String apiKey1 = '438edcd0c4c94b6dae915231a8850680';
      var response = await http.get(Uri.parse(
          'https://newsapi.org/v2/everything?q=tesla&from=2023-07-30&sortBy=publishedAt&language=en&apiKey=$apiKey1'));
      var decodedResponse = jsonDecode(response.body);
      if (response.statusCode == 200) {
        GetNewsModel myResponse = GetNewsModel.fromJson(decodedResponse);
        return myResponse;
      } else {
        return null;
      }
    } catch (error) {
      return null;
    }
  }
}
