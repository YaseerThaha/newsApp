import 'package:flutter/material.dart';
import 'package:news_app/components/listtile.dart';
import 'package:news_app/models/models.dart';
import 'package:news_app/services/api_services.dart';



class HealthPage extends StatefulWidget {
  const HealthPage({super.key});

  @override
  State<HealthPage> createState() => _HealthPageState();
}

class _HealthPageState extends State<HealthPage> {

  Health health = Health();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text("Health",style: TextStyle(color: Colors.white),),
      ),
      body: FutureBuilder(
                      future: health.getArticle(),
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