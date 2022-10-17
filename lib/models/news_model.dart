import 'article_model.dart';

class News{
  List<Article>? articles;

  News({required this.articles});

  factory News.fromJson(Map<String,dynamic> json) {


    return News(articles: (json["articles"] as List).map((e) => Article.fromJson(e)).toList());
  }
}