import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding:const EdgeInsets.all(8), 
      child: Row(
          children: const [
            _TabItem(title: 'Popular', selected: true),
            _TabItem(title: 'Trending'),
            _TabItem(title: 'Following'),
          ],
        ),
    );
  }
}

class _TabItem extends StatelessWidget {
  final String title;
  final bool selected;

  const _TabItem({
    required this.title,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: selected ? const Color(0xFFEDEDFF) : Colors.transparent,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: selected ? const Color(0xFF6C6CF5) : Colors.grey,
          ),
        ),
      ),
    );
  }
}
