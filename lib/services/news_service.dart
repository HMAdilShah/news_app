import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/News.dart';

class NewsService {
  static const String _baseUrl = 'https://api.news.com/v1/';

  Future<List<News>> getTopStories() async {
    var response = await http.get('$_baseUrl/top-stories');
    if (response.statusCode == 200) {
      var newsJson = jsonDecode(response.body) as List;
      return newsJson.map((news) => News.fromJson(news)).toList();
    } else {
      throw Exception('Failed to load news');
    }
  }

  Future<List<News>> fetchNews() async {
    final response = await http.get("YOUR_NEWS_API_URL");

    if (response.statusCode == 200) {
      final news = json.decode(response.body)['articles'] as List;
      return news.map((newsItem) => News.fromJson(newsItem)).toList();
    } else {
      throw Exception("Failed to load news");
    }
  }
}