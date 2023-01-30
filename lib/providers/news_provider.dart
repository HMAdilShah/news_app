import 'dart:convert';
import 'package:http/http.dart' as http;

class NewsProvider {
  final String _baseUrl = "https://newsapi.org/v2/";
  final String _apiKey = "YOUR_API_KEY_HERE";

  Future<List<dynamic>> fetchTopHeadlines({String country = 'us'}) async {
    final response = await http.get("$_baseUrl/top-headlines?country=$country&apiKey=$_apiKey");

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data['articles'];
    } else {
      throw Exception("Failed to load news data");
    }
  }
}
