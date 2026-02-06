import 'package:flutter/material.dart';
import 'package:training/theme/app_colors.dart';

class JoinedText extends StatelessWidget {
  const JoinedText();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
            '350',
            style: TextStyle(
              fontSize: 12,
              color: AppColors.primary,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            ' people have joined this challenge',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }
}
