import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsList extends StatelessWidget {
  final List<Map<String, dynamic>> newsData;

  NewsList({required this.newsData});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: newsData.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(newsData[index]['title']),
            subtitle: Text(newsData[index]['subtitle']),
            onTap: () => Get.toNamed('/news_detail', arguments: {
              'title': newsData[index]['title'],
              'subtitle': newsData[index]['subtitle'],
              'body': newsData[index]['body'],
            }),
          ),
        );
      },
    );
  }
}
