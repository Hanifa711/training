import 'package:flutter/material.dart';
import 'package:training/widgets/home/post_card_widget.dart';

class FeedList extends StatelessWidget {
  const FeedList();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        PostCard(
          avatar: 'assets/images/avatar1.png',
          name: 'Thanh Pham',
          time: '1 hour ago',
          image: 'assets/images/post1.png',
          comments: 20,
          likes: 125,
        ),
        SizedBox(height: 16),
        PostCard(
          avatar: 'assets/images/avatar2.png',
          name: 'Bruno',
          time: '1 hour ago',
          image: 'assets/images/post2.png',
          comments: 8,
          likes: 64,
        ),
      ],
    );
  }
}
