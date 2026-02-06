import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training/widgets/home/feed_list_widget.dart';
import 'package:training/widgets/home/tabs_widget.dart';

class HomePage extends StatefulWidget {
  static int tabsSelectedIndex = 0;

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTabBar(
          selectedIndex: HomePage.tabsSelectedIndex,
          onTabSelected: (index) {
            setState(() => HomePage.tabsSelectedIndex = index);
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
        ),
        SizedBox(height: 5.h),
        Expanded(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => HomePage.tabsSelectedIndex = index);
            },
            children: const [
              FeedList(),
              Center(child: Text('Trending Page')),
              Center(child: Text('Following Page')),
            ],
          ),
        ),
      ],
    );
  }
}
