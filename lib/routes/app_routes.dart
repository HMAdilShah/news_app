import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/widgets/news_list.dart';

import '../controllers/news_controller.dart';


class AppRoutes {
  static final routes = [
    GetPage(
      name: '/news',
      page: () => NewsList(newsData: []),
      binding: BindingsBuilder(
            () => NewsController(),
      ),
    ),
  ];
}
