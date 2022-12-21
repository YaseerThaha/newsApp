import 'package:flutter/material.dart';
import 'package:news_app/components/listtile.dart';
import 'package:news_app/models/models.dart';
import 'package:news_app/services/api_services.dart';



class BusinessPage extends StatefulWidget {
  const BusinessPage({super.key});

  @override
  State<BusinessPage> createState() => _BusinessPageState();
}

class _BusinessPageState extends State<BusinessPage> {  

  Business business = Business();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text("business", style: TextStyle(color: Colors.white),),
      ),
      body: FutureBuilder(
                      future: business.getArticle(),
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