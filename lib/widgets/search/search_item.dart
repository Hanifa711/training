import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GradientImageCard extends StatelessWidget {
  final String img;
  final String title;
  final bool isright;

  const GradientImageCard({super.key, required this.img, required this.title, required this.isright});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      height: 180, 
   
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // First background image
            Positioned.fill(
              child: Image.asset(
                img,
                fit: BoxFit.cover,
              ),
            ),
            // Second background image with some blend
            Positioned.fill(
              child: Image.asset(
                 'assets/images/searchup.png',
                fit: BoxFit.cover,
                color: Colors.black.withOpacity(0.3),
                colorBlendMode: BlendMode.darken,
              ),
            ),        
           
            Positioned(
             right: isright ? 10 : null, 
            left: isright ? null : 10,
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      blurRadius: 4,
                      color: Colors.black45,
                      offset: Offset(1, 1),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
