import 'package:flutter/material.dart';
import 'package:news_app/components/listtile.dart';
import 'package:news_app/models/models.dart';
import 'package:news_app/services/api_services.dart';



class TechnologyPage extends StatefulWidget {
  const TechnologyPage({super.key});

  @override
  State<TechnologyPage> createState() => _TechnologyPageState();
}

class _TechnologyPageState extends State<TechnologyPage> {

  Technology technology = Technology();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text("Technology", style: TextStyle(color: Colors.white),),
      ),

      body: FutureBuilder(
                      future: technology.getArticle(),
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