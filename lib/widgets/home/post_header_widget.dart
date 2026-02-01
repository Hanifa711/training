import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  final String avatar;
  final String name;
  final String time;

  const PostHeader({
    required this.avatar,
    required this.name,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(backgroundImage: AssetImage(avatar)),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(time, style: const TextStyle(color: Colors.grey)),
            ],
          ),
        ),
      ],
    );
  }
}
