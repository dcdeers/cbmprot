// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class CybersecurityNewsScreen extends StatefulWidget {
//   @override
//   _CybersecurityNewsScreenState createState() =>
//       _CybersecurityNewsScreenState();
// }

// class _CybersecurityNewsScreenState extends State<CybersecurityNewsScreen> {
//   List articles = [];
//   String apiKey = 'b2faf2a3a24d48b4acdf520a2b03edb6'; // Replace with your API Key

//   @override
//   void initState() {
//     super.initState();
//     fetchNews();
//   }

//   fetchNews() async {
//     final url =
//         'https://newsapi.org/v2/everything?q=cybersecurity&apiKey=$apiKey';
//     final response = await http.get(Uri.parse(url));

//     if (response.statusCode == 200) {
//       setState(() {
//         final jsonData = json.decode(response.body);
//         articles = jsonData['articles'];
//       });
//     } else {
//       throw Exception('Failed to load news');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Cybersecurity News'),
//         backgroundColor: Colors.black,
//       ),
//       body: articles.isEmpty
//           ? Center(child: CircularProgressIndicator())
//           : ListView.builder(
//               itemCount: articles.length,
//               itemBuilder: (context, index) {
//                 return Card(
//                   margin: EdgeInsets.all(10),
//                   child: ListTile(
//                     title: Text(articles[index]['title']),
//                     subtitle: Text(articles[index]['description'] ?? ''),
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => NewsDetailScreen(
//                             url: articles[index]['url'],
//                             title: articles[index]['title'],
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 );
//               },
//             ),
//     );
//   }
// }

// class NewsDetailScreen extends StatelessWidget {
//   final String url;
//   final String title;

//   NewsDetailScreen({required this.url, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//         backgroundColor: Colors.black,
//       ),
//       body: Center(
//         child: Text('Open in a webview: $url'), // Replace with a WebView if needed
//       ),
//     );
//   }
// }

// import 'package:cbmprot/news/article.dart';
// import 'package:cbmprot/news/constant.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// class CybersecurityNewsScreen extends StatefulWidget {
//   const CybersecurityNewsScreen({super.key});

//   @override
//   State<CybersecurityNewsScreen> createState() => _CybersecurityNewsScreenState();
// }

// class _CybersecurityNewsScreenState extends State<CybersecurityNewsScreen> {
//   final Dio dio = Dio();
//   List<Article> articles = [];

//   @override
//   void initState() {
//     super.initState();
//     _getNews();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Cybersecurity News",
//         ),
//         backgroundColor: Colors.black,
//       ),
//       body: _buildUI(),
//     );
//   }

//   Widget _buildUI() {
//     return articles.isEmpty
//         ? Center(child: CircularProgressIndicator())
//         : ListView.builder(
//             itemCount: articles.length,
//             itemBuilder: (context, index) {
//               final article = articles[index];
//               return Card(
//                 margin: EdgeInsets.all(10),
//                 child: ListTile(
//                   onTap: () {
//                     _launchUrl(
//                       Uri.parse(article.url ?? ""),
//                     );
//                   },
//                   leading: Image.network(
//                     article.urlToImage ?? 'https://via.placeholder.com/100', // Placeholder image link
//                     height: 80,
//                     width: 80,
//                     fit: BoxFit.cover,
//                   ),
//                   title: Text(
//                     article.title ?? "",
//                     maxLines: 3,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                   subtitle: Text(
//                     article.publishedAt ?? "",
//                     maxLines: 1,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                 ),
//               );
//             },
//           );
//   }

//   Future<void> _getNews() async {
//     try {
//       final response = await dio.get(
//         'https://newsapi.org/v2/everything?q=cybersecurity&apiKey=${NEWS_API_KEY}',
//       );
//       final articlesJson = response.data["articles"] as List;
//       setState(() {
//         List<Article> newsArticle = articlesJson.map((a) => Article.fromJson(a)).toList();
//         newsArticle = newsArticle.where((a) => a.title != "[Removed]").toList();
//         articles = newsArticle;
//       });
//     } catch (e) {
//       print("Failed to load news: $e");
//     }
//   }

//   Future<void> _launchUrl(Uri url) async {
//     if (!await launchUrl(url)) {
//       throw Exception('Could not launch $url');
//     }
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: CybersecurityNewsScreen(),
//   ));
// }

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
