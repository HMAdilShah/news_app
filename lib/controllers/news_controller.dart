import 'package:get/get.dart';
import 'package:news_app/models/news.dart';
import 'package:news_app/services/news_service.dart';

class NewsController extends GetxController {
  final NewsService _newsService = NewsService();

  RxList<News> _news = RxList<News>([]);
  get news => _news.value;
  set news(value) => _news.value = value;

  void fetchNews() async {
    _news.value = (await _newsService.fetchNews()).cast<News>();
  }
}
