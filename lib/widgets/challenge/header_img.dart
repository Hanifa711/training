import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage();

  @override
  Widget build(BuildContext context) {
    return Stack(
       alignment: Alignment.bottomCenter,
      children: [
       
        ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24),
          ),
          child: Image.asset(
                'assets/images/post1.png',
                height: 260.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
               
        ),
        Positioned(
                 bottom: -10,
                 child: Container(
                   padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: const Text(
                    'BLACK & WHITE PHOTOGRAPHY',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2,
                    ),
                  ),
                           ),
               ),
        Positioned(
          top: 30,
          left: 10,
          child: GestureDetector(
           child: Container(
            padding: EdgeInsets.all(5),
            child:const Icon(Icons.arrow_back,color: Colors.white,),
            decoration: BoxDecoration(
              color: Color.fromARGB(20, 255, 255,255),
              borderRadius: BorderRadius.circular(6)
            ),
           ),
          ),
        ),
      ],
    );
  }
}
