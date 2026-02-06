import 'package:flutter/material.dart';
import 'package:training/data.dart';
import 'package:training/widgets/category/category_card_widget.dart';
import 'package:training/widgets/category/header_widget.dart';

class SelectCategoryScreen extends StatefulWidget {
  
  const SelectCategoryScreen({super.key});

  @override
  State<SelectCategoryScreen> createState() => _SelectCategoryScreenState();
}

class _SelectCategoryScreenState extends State<SelectCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0; 
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
                child: GridView.builder(
                  itemCount: CategoryList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.85
                  ),
                  itemBuilder: (context, index) {
                    return CategoryCard(
                      title: CategoryList[index].title, 
                      imagePath: CategoryList[index].imagePath,
                      isSelected: selectedIndex==index, 
                      onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },);
                  },
                  
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
