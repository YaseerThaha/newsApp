import 'dart:convert';
import 'package:http/http.dart';
import 'package:news_app/models/models.dart';

class Business {

  final category = "business";
  final key = "57e66a0d943d40e1ae736ea570e1fc53";

  late dynamic url = Uri.parse("https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=$key");

  Future<List<Article>> getArticle() async {
    Response response = await get(url);

    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['articles'];
      List<Article> articles = body.map((dynamic  item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw ("Can't get the articles");
    }
  }
}


class Health {

  final category = "health";
  final key = "57e66a0d943d40e1ae736ea570e1fc53";

  late dynamic url = Uri.parse("https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=$key");

  Future<List<Article>> getArticle() async {
    Response response = await get(url);

    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['articles'];
      List<Article> articles = body.map((dynamic  item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw ("Can't get the articles");
    }
  }
}


class Science {

  final category = "science";
  final key = "57e66a0d943d40e1ae736ea570e1fc53";

  late dynamic url = Uri.parse("https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=$key");

  Future<List<Article>> getArticle() async {
    Response response = await get(url);

    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['articles'];
      List<Article> articles = body.map((dynamic  item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw ("Can't get the articles");
    }
  }
}

class Sports {

  final category = "sports";
  final key = "57e66a0d943d40e1ae736ea570e1fc53";

  late dynamic url = Uri.parse("https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=$key");

  Future<List<Article>> getArticle() async {
    Response response = await get(url);

    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['articles'];
      List<Article> articles = body.map((dynamic  item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw ("Can't get the articles");
    }
  }
}


class Technology {

  final category = "technology";
  final key = "57e66a0d943d40e1ae736ea570e1fc53";

  late dynamic url = Uri.parse("https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=$key");

  Future<List<Article>> getArticle() async {
    Response response = await get(url);

    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['articles'];
      List<Article> articles = body.map((dynamic  item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw ("Can't get the articles");
    }
  }
}