// lib/screens/article_screen.dart
import 'package:database_apk/models/article.dart';
import 'package:flutter/material.dart';
import '../widgets/article_card.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final articles = ArticleDatabase.allArticles;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F7F5),
      body: CustomScrollView(
        slivers: [
          // Header Hiasan Berwujud SliverAppBar yang Fleksibel
          SliverAppBar(
            expandedHeight: 150.0,
            floating: false,
            pinned: true,
            backgroundColor: const Color(0xFF1B5E20),
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.only(left: 16, bottom: 16),
              title: const Text(
                'Artikel Kajian Islami',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF1B5E20), Color(0xFF388E3C)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Opacity(
                  opacity: 0.1,
                  child: Icon(Icons.menu_book, size: 150, color: Colors.white.withOpacity(0.3)),
                ),
              ),
            ),
          ),
          
          // List Artikel
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 24.0),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  return ArticleCard(article: articles[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}