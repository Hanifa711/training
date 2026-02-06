
// ignore_for_file: non_constant_identifier_names

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training/widgets/category/category_discover_item.dart';

final CategoryList=[
  CategoryModel(title:'Photographer', imagePath: 'assets/images/ph.png'),
  CategoryModel(title:'Video Creator', imagePath: 'assets/images/video.png'),
  CategoryModel(title:'Illustrator', imagePath: 'assets/images/illus.png'),
  CategoryModel(title:'Designer', imagePath: 'assets/images/design.png'),
];

final DiscoverTopicsList=[
  CategoryItem(title:'PHOTOGRAPHY', image: 'assets/images/discover_ph.png',height: 100.h,width: 150.w,),
  CategoryItem(title:'UI Designer', image: 'assets/images/discover_ui.png',height: 100.h,width: 150.w),
  CategoryItem(title:'UI Designer', image: 'assets/images/discover_ui.png',height: 100.h,width: 150.w),

];

final DiscoverCollectionList=[
  CategoryItem( title: '',
                image: 'assets/images/discover_collection.png',
                footer: '70 photos',
                height: 185.h,width: 150.w
                ),
  CategoryItem( title: '',
                image: 'assets/images/discover_collection2.png',
                footer: '10 Videos',
                height: 185.h,width: 150.w),
  CategoryItem( title: '',
                image: 'assets/images/discover_collection2.png',
                footer: '70 photos',
                height: 185.h,width: 150.w),
];
final searchList=[
    CategoryModel(title:'PHOTOGRAPHY', imagePath: 'assets/images/discover_ph.png'),
    CategoryModel(title:'IILUSTRATION', imagePath: 'assets/images/searchdown2.png'),
    CategoryModel(title:'DESIGN', imagePath: 'assets/images/searchdown3.png'),
    CategoryModel(title:'MAKING VIDEO', imagePath: 'assets/images/searchdown4.png'),


];
class CategoryModel{
  final String title;
  final String imagePath;

  CategoryModel({required this.title, required this.imagePath});
}