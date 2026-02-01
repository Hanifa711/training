import 'package:flutter/material.dart';
import 'package:training/theme/app_colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar();

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
    shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      color: Colors.white.withOpacity(0.95),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(Icons.home, color: AppColors.primary),
            Icon(Icons.grid_view_outlined, color: Colors.grey),
            SizedBox(width: 48),
            Icon(Icons.notifications_none, color: Colors.grey),
            Icon(Icons.person_outline, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
