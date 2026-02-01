import 'package:flutter/material.dart';

class PostActions extends StatelessWidget {
  final int comments;
  final int likes;

  const PostActions({
    required this.comments,
    required this.likes,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.add_circle_outline, color: Color(0xFF6C6CF5)),
        const Spacer(),
        Row(
          children: [
            const Icon(Icons.chat_bubble_outline, size: 20),
            const SizedBox(width: 4),
            Text('$comments'),
          ],
        ),
        const SizedBox(width: 16),
        Row(
          children: [
            const Icon(Icons.favorite_border, size: 20),
            const SizedBox(width: 4),
            Text('$likes'),
          ],
        ),
      ],
    );
  }
}
