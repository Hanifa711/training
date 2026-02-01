import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training/theme/app_colors.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: (){
        
      },
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 14.sp,
        ),
        prefixIcon: const Icon(
          Icons.search,
          color: AppColors.primary,
        ),
        filled: true,
        fillColor: Color(0xffF3F5F7),
        contentPadding: EdgeInsets.symmetric(
          vertical: 14.h,
          horizontal: 16.w,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.r),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.r),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
