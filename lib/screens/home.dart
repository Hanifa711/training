import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training/theme/app_colors.dart';
import 'package:training/widgets/home/bottom_nav_bar_widget.dart';
import 'package:training/widgets/home/feed_list_widget.dart';
import 'package:training/widgets/home/search_bar_widget.dart';
import 'package:training/widgets/home/tabs_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7FA),
      bottomNavigationBar: const BottomNavBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
       extendBody: true,
      floatingActionButton: FloatingActionButton(
        backgroundColor:  AppColors.primary,
        onPressed: () {},
        child: const Icon(Icons.add_circle_rounded,color: Colors.white,),
      ),
      body: SafeArea(
        child: Column(
          children:  [
            MySearchBar(),
            MyTabBar(),
            SizedBox(height: 5.h,),
            Expanded(child: FeedList()),
          ],
        ),
      ),
    );
  }
}
