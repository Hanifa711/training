import 'package:flutter/material.dart';
import 'package:training/screens/challenge_screen.dart';
import 'package:training/screens/home_bottom_bar.dart';
import 'package:training/screens/search.dart';
import 'package:training/screens/select_category.dart';
import '../screens/bordering.dart';
import '../screens/forget_password.dart';
import '../screens/login_screen.dart';
import '../screens/set_new_password.dart';
import '../screens/signup.dart';
import '../screens/verify.dart';
import 'screens/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:training/l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
       supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: const Locale('ar'),
       theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(),
         floatingActionButtonTheme: const FloatingActionButtonThemeData(
            shape: CircleBorder(), 
  ),
      ),
        initialRoute: '/',
        routes: {
        '/': (context) => const SplashScreen(),
        '/bordering': (context) => const BorderingScreen(),
        '/sign_in': (context) => const LoginScreen(),
        '/sign_up': (context) => const SignUpScreen(),
        '/verify': (context) => const VerifyScreen(),
        '/forgetpassword': (context) => const  ForgetPasswordScreen(),
        '/setnewpassword': (context) => const  SetNewPasswordScreen(),
        '/select_category':(context)=>const SelectCategoryScreen(),
        '/home':(context)=>const HomeBottomBar(),
        '/search':(context)=>const SearchScreen(),
        'challenge':(context)=>const ChallengeScreen(),


        },
      );
      },
     
    );
  }
}
//Navigator.pushNamed(context, '/profile');
//Navigator.pop(context);
//https://github.com/Hanifa711/training.git
//AppLocalizations.of(context)!.get_started