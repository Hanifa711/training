import 'package:flutter/material.dart';
import 'package:training/screens/discover.dart';
import 'package:training/screens/home.dart';
import 'package:training/theme/app_colors.dart';
import 'package:training/widgets/home/bottom_nav_bar_widget.dart';
import 'package:training/widgets/home/search_bar_widget.dart';

class HomeBottomBar extends StatefulWidget {
  const HomeBottomBar({super.key});

  @override
  State<HomeBottomBar> createState() => _HomeBottomBarState();
}

class _HomeBottomBarState extends State<HomeBottomBar> {
  int _bottomcurrentIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),
    DiscoverScreen(),
    // NotificationsScreen(),
    // ProfileScreen(),
  ];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7FA),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _bottomcurrentIndex,
        onTap: (index) {
          setState(() => _bottomcurrentIndex = index);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
       extendBody: true,
      floatingActionButton: FloatingActionButton(
        backgroundColor:  AppColors.primary,
        onPressed: () {},
        child: const Icon(Icons.add_circle_rounded,color: Colors.white,),
      ),
     body: SafeArea(
      child: Column(
        children: [
          MySearchBar(true),
          Expanded(
            child: IndexedStack(
              index: _bottomcurrentIndex,
              children: _pages,
            ),
          ),
        ],
      ),
    ),
    );
  }
}
