import 'package:flutter/material.dart';
import 'package:training/widgets/home/post_actions_widget.dart';
import 'package:training/widgets/home/post_header_widget.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String time;
  final String image;
  final int comments;
  final int likes;

  const PostCard({
    super.key,
    required this.avatar,
    required this.name,
    required this.time,
    required this.image,
    required this.comments,
    required this.likes,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostHeader(avatar: avatar, name: name, time: time),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(image, fit: BoxFit.cover),
          ),
          const SizedBox(height: 12),
          PostActions(comments: comments, likes: likes),
        ],
      ),
    );
  }
}
