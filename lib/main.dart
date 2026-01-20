import 'package:flutter/material.dart';
import 'package:note_app/screens/bordering.dart';
import 'package:note_app/screens/login_screen.dart';
import 'screens/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'i.click',
       theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
        home: const LoginScreen(),
        initialRoute: '/',
        routes: {
            '/': (context) => const SplashScreen(),
        '/bordering': (context) => const BorderingScreen(),
        '/sign_in': (context) => const LoginScreen(),

        },
      );
      },
     
    );
  }
}
//Navigator.pushNamed(context, '/profile');
//Navigator.pop(context);
