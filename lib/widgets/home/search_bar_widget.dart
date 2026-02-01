import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training/theme/app_colors.dart';
import 'package:training/widgets/home/sreach_textfiled_widget.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar();

  @override
  Widget build(BuildContext context) {
   
    return Container(
        height:100.h,
        width: 400.w,
        color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
           Expanded(child: SearchTextField()),
             SizedBox(width: 10.w),
            Container(
              height: 48.h,
              width: 48.w,
              decoration: const BoxDecoration(
               color: Color(0xffF3F5F7),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.send_outlined, color: AppColors.black),
            ),
          ],
        ),
      ),
    );
  }
}
