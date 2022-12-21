


class Article {
  Source source;
  String  author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  Article ({ required this.source, required this.author, required this.title, required this.description, required this.url, required this.urlToImage, required this.publishedAt, required this.content});


  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      source: Source.fromJson(json['source']),
      author: json['author'].toString(),
      title: json['title'].toString(),
      description: json['author'].toString(),
      url: json['url'].toString(),
      urlToImage: json['urlToImage'].toString(),
      publishedAt: json['publishedAt'].toString(),
      content: json['content'].toString()
    );
  }
}

class Source {
  String id;
  String name;

  Source({required this.id, required this.name});


  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(
      id: json['id'].toString(),
      name: json['name']
    );
  }
}