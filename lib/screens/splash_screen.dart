import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
   late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;
  @override
  void initState() {
   
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutBack),
    );

    _controller.forward();
     Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/bordering');
  });
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
   

    return Scaffold(
      body: Stack( 
        children: [
      SizedBox.expand(
       child: FadeTransition(
        opacity: _fadeAnimation,
         child: ScaleTransition(
          scale: _scaleAnimation,
           child: Image.asset(
               'assets/images/dark_background.png',
               fit: BoxFit.cover,
             ),
         ),
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
                  SizedBox(height: size.height*.05,),
                Image.asset(
           'assets/images/dimond.png',
           fit: BoxFit.cover,
         ),
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

