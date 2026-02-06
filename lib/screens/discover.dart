import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training/data.dart';
import 'package:training/widgets/home/section_widget.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Expanded(
        child: CustomScrollView(
              slivers: [
                 SliverToBoxAdapter(
                  child: Section(
                    height: 150.h,
                    title: 'Topic',
                    subtitle: 'View more',
                    items:DiscoverTopicsList
                  ),
                ),
                 SliverToBoxAdapter(
                  child: Section(
                    height: 200.h,
                    title: 'Collection',
                    subtitle: 'View more',
                    items: DiscoverCollectionList
                  ),
                ),
                 SliverToBoxAdapter(
                  child: Section(
                    height: 200.h,
                    title: 'Collection',
                    subtitle: 'View more',
                    items:DiscoverCollectionList
                  ),
                ),
              ],
         
        ),
      ),
    );
  }
}
