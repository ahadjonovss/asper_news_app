class Article {

  String? author;
  String? title;
  String? url;
  String? urlToImages;
  String? publishedAt;
  String? content;

  Article(
      {
        required this.author,
        required this.title,
        required this.publishedAt,
        required this.url,
        required this.content,
        required this.urlToImages,}
      );

  factory Article.fromJson(Map<String,dynamic> json){
    return Article(
        author: json["author"]??"no data",
        title: json["title"]??"no data",
        publishedAt: json["publishedAt"]??"no data",
        url: json["url"]??"no data",
        content: json["content"]??"no data",
        urlToImages: json["urlToImage"]??"https://source.unsplash.com/random/300x200");
  }

}