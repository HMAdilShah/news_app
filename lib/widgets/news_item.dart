import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsItem extends StatelessWidget {
  final String? title;
  final String? description;
  final String? imageUrl;

  const NewsItem({
    required Key key,
    @required this.title,
    @required this.description,
    @required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title!,
            style: Get.textTheme.headline5,
          ),
          SizedBox(height: 8),
          Text(
            description!,
            style: Get.textTheme.subtitle1,
          ),
          SizedBox(height: 8),
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl!),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
