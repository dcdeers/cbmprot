import 'package:cbmprot/news/article.dart';
import 'package:cbmprot/news/constant.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class CybersecurityNewsScreen extends StatefulWidget {
  const CybersecurityNewsScreen({super.key});

  @override
  State<CybersecurityNewsScreen> createState() =>
      _CybersecurityNewsScreenState();
}

class _CybersecurityNewsScreenState extends State<CybersecurityNewsScreen> {
  final Dio dio = Dio();
  List<Article> articles = [];

  @override
  void initState() {
    super.initState();
    _getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cybersecurity News",
          style: TextStyle(
              fontFamily: 'Montserrat', fontWeight: FontWeight.bold, color: Colors.cyanAccent,),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        foregroundColor: Colors.white, // Back button color set to white
      ),
      body: articles.isEmpty
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Column(
                children: [
                  ListView.builder(
                    itemCount: articles.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      final article = articles[index];
                      final formattedDate = article.publishedAt != null
                          ? DateFormat('yMMMd').format(
                              DateTime.parse(article.publishedAt!))
                          : '';

                      return GestureDetector(
                        onTap: () {
                          _launchUrl(Uri.parse(article.url ?? ""));
                        },
                        child: Card(
                          margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          color: Colors.grey[900],
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  article.title ?? "",
                                  style: TextStyle(
                                    color: Colors.cyanAccent,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat',
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  formattedDate,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  article.description ?? "",
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                  ),
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
      backgroundColor: Colors.black,
    );
  }

  Future<void> _getNews() async {
    try {
      final response = await dio.get(
        'https://newsapi.org/v2/everything?q=cybersecurity&apiKey=$NEWS_API_KEY',
      );
      final articlesJson = response.data["articles"] as List;
      setState(() {
        List<Article> newsArticle =
            articlesJson.map((a) => Article.fromJson(a)).toList();
        newsArticle = newsArticle.where((a) => a.title != "[Removed]").toList();
        articles = newsArticle;
      });
    } catch (e) {
      print("Failed to load news: $e");
    }
  }

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}

void main() {
  runApp(MaterialApp(
    home: CybersecurityNewsScreen(),
  ));
}
