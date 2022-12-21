import 'package:flutter/material.dart';
import 'package:news_app/components/listtile.dart';
import 'package:news_app/models/models.dart';
import 'package:news_app/services/api_services.dart';



class SciencePage extends StatefulWidget {
  const SciencePage({super.key});

  @override
  State<SciencePage> createState() => _SciencePageState();
}

class _SciencePageState extends State<SciencePage> {

  Science science = Science();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text("science", style: TextStyle(color: Colors.white),),
      ),

      body: FutureBuilder(
                      future: science.getArticle(),
                      builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
                        if(snapshot.hasData) {
                          List<Article>? articles = snapshot.data;
                          return Column(
                            children: [
                              Expanded(
                                child: ListView.builder(
                                  itemCount: articles?.length,
                                  itemBuilder: (context, index) => listTile(
                                    articles![index], context)),
                              ),
                            ],
                          );
                        }
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    ),
    );
  }
}