import 'package:flutter/material.dart';
import '../models/post_model.dart';
import '../components/post_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<PostModel> posts = [
      PostModel(
        imageUrl: 'https://source.unsplash.com/random/400x300?food',
        title: 'Вкусная еда',
        description: 'Описание вкусной еды.',
      ),
      PostModel(
        imageUrl: 'https://source.unsplash.com/random/400x300?dessert',
        title: 'Десерты',
        description: 'Описание вкусных десертов.',
      ),
      PostModel(
        imageUrl: 'https://source.unsplash.com/random/400x300?coffee',
        title: 'Кофе',
        description: 'Лучший кофе в городе.',
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Главная")),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) => PostCard(post: posts[index]),
      ),
    );
  }
}
