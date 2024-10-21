import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CybersecurityNewsScreen extends StatefulWidget {
  @override
  _CybersecurityNewsScreenState createState() =>
      _CybersecurityNewsScreenState();
}

class _CybersecurityNewsScreenState extends State<CybersecurityNewsScreen> {
  List articles = [];
  String apiKey = 'b2faf2a3a24d48b4acdf520a2b03edb6'; // Replace with your API Key

  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  fetchNews() async {
    final url =
        'https://newsapi.org/v2/everything?q=cybersecurity&apiKey=$apiKey';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      setState(() {
        final jsonData = json.decode(response.body);
        articles = jsonData['articles'];
      });
    } else {
      throw Exception('Failed to load news');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cybersecurity News'),
        backgroundColor: Colors.black,
      ),
      body: articles.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    title: Text(articles[index]['title']),
                    subtitle: Text(articles[index]['description'] ?? ''),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewsDetailScreen(
                            url: articles[index]['url'],
                            title: articles[index]['title'],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}

class NewsDetailScreen extends StatelessWidget {
  final String url;
  final String title;

  NewsDetailScreen({required this.url, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text('Open in a webview: $url'), // Replace with a WebView if needed
      ),
    );
  }
}
