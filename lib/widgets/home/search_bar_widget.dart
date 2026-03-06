import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training/l10n/app_localizations.dart';
import 'package:training/theme/app_colors.dart';
import 'package:training/widgets/home/sreach_textfiled_widget.dart';

class MySearchBar extends StatelessWidget {
   final bool moveToSearch;
  const MySearchBar(this.moveToSearch);

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
           Expanded(child: SearchTextField(
            moveToSearch: moveToSearch,
           )),
             SizedBox(width: 10.w),
            !moveToSearch?
            TextButton(
              child:Text(AppLocalizations.of(context)!.cancel) ,
              onPressed:()=>Navigator.pushNamed(context, '/home') ,
              )
            : 
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
