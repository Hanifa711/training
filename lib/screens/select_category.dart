import 'package:flutter/material.dart';
import 'package:training/widgets/category/category_card_widget.dart';
import 'package:training/widgets/category/header_widget.dart';

class SelectCategoryScreen extends StatelessWidget {
  const SelectCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: 24),
            const Text(
              'Who are you?',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.85,
                  children: const [
                    CategoryCard(
                      title: 'Photographer',
                      imagePath: 'assets/images/ph.png',
                    ),
                    CategoryCard(
                      title: 'Video Creator',
                      imagePath: 'assets/images/video.png',
                    ),
                    CategoryCard(
                      title: 'Illustrator',
                      imagePath: 'assets/images/illus.png',
                    ),
                    CategoryCard(
                      title: 'Designer',
                      imagePath: 'assets/images/design.png',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'SHARE - INSPIRE - CONNECT',
              style: TextStyle(
                color: Color(0xFF6C6CF5),
                letterSpacing: 2,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: const Color(0xFF6C6CF5),
                  ),
                  onPressed: () {
                     Navigator.pushNamed(context, '/home');
                  },
                  child: const Text(
                    'EXPLORE NOW',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
