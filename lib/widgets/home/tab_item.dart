
import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final String title;
  final bool selected;
  final VoidCallback onTap;

  const TabItem({
    required this.title,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
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
      ),
    );
  }
}
