import 'package:flutter/material.dart';
import 'package:news_app/components/listtile.dart';
import 'package:news_app/models/models.dart';
import 'package:news_app/services/api_services.dart';



class SportsPage extends StatefulWidget {
  const SportsPage({super.key});

  @override
  State<SportsPage> createState() => _SportsPageState();
}

class _SportsPageState extends State<SportsPage> {

  Sports sports = Sports();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text("sports", style: TextStyle(color: Colors.white),),
      ),
      body: FutureBuilder(
                      future: sports.getArticle(),
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