import 'package:flutter/material.dart';
import '../models/post_model.dart';
import '../components/post_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<PostModel> posts = [
    PostModel(
      imageUrl: 'https://placekitten.com/400/300',
      title: 'Котик',
      description: 'Милый пушистик 🐱',
    ),
    PostModel(
      imageUrl: 'https://placekitten.com/401/301',
      title: 'Ещё котик',
      description: 'Ещё один пушистик! 🐈',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Главная')),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) => PostCard(post: posts[index]),
      ),
    );
  }
}
