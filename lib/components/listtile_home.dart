

import 'package:flutter/material.dart';
import 'package:news_app/models/models.dart';
import 'package:news_app/pages/detail_page.dart';

Widget listTileHome(Article article, BuildContext context) {
  return 
      InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> ArticleView(article: article)));
        },
        child: Container(
          margin: const EdgeInsets.all(12.0),
          padding: const EdgeInsets.all(8.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 3.0,
              ),
            ]
          ),
          child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Text(article.source.name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.white),),
                  ),
                  const SizedBox(
                    height: 10.0,
                    ),
                  Container(
                child: Text(article.title, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
              ),
                ],
              ),
        ),
  );
}

