import 'package:flutter/material.dart';
import 'package:news_app/models/models.dart';


class ArticleView extends StatelessWidget {

  
  const ArticleView({Key? key, required this.article}) : super(key: key);
    final Article article;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              height: 230.0,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(article.urlToImage),
                  fit: BoxFit.cover,
                ),
              ),  
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(15.00),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Description", style: TextStyle(fontSize: 24)),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(article.title, style: const TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
              ),
            
      
      
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Text(article.publishedAt, style: const TextStyle(fontSize: 18)),
            ),  
      
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Text(article.content, style: const TextStyle(fontSize: 20.0)),
            ),
      

          ],
        ),
      ),
    );

  }
}