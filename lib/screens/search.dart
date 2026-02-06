import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training/data.dart';
import 'package:training/widgets/home/search_bar_widget.dart';
import 'package:training/widgets/search/search_item.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white, 
      
      body: Column(
  children: [
    MySearchBar(false),
    Expanded(
      child: ListView.builder(
        itemCount: searchList.length,
        itemBuilder: (context, index) {
          return GradientImageCard(
            isright:index%2==0,
            img: searchList[index].imagePath,
            title: searchList[index].title,
          );
        },
      ),
    ),
  ],
)


      ),
    );
  }
}