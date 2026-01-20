import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/started_button.dart';

class BorderingScreen extends StatelessWidget {
  const BorderingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
   

    return Scaffold(
      body: Stack( 
        children: [
      SizedBox.expand(
       child: Image.asset(
           'assets/images/back.png',
           fit: BoxFit.cover,
         ),
     ),
      SafeArea(
            child: Container(
              width: size.width,
              height: size.height,
              child: Column(
                children: [
                  const SizedBox(height: 40),
                   Text(
                    'i.click',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 42.sp,
                            color: Colors.white
                          ),
                  ),
                  SizedBox(height: 32.h,),
                Image.asset(
           'assets/images/dimond.png',
           fit: BoxFit.cover,
         ),
         SizedBox(height: size.height*.02,),
          Text(
                    'SHARE - INSPIRE - CONNECT',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.white,
                    ),
                  ),
                SizedBox(height:43.h,),
                StatrtedButton()
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

