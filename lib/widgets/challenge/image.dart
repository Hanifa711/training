import 'package:flutter/material.dart';

class InspirationImages extends StatelessWidget {
  final String img1;
  final String img2;

  const InspirationImages(this.img1, this.img2);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          _InspirationItem(image: img1),
          const SizedBox(width: 12),
          _InspirationItem(image: img2),
        ],
      ),
    );
  }
}

class _InspirationItem extends StatelessWidget {
  final String image;

  const _InspirationItem({required this.image});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          image,
          height: 140,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
