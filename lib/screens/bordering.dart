import 'package:flutter/material.dart';
import 'package:note_app/widgets/started_button.dart';

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
           'assets/images/dark_background.png',
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
                  const Text(
                    'i.click',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 42,
                      fontFamily: 'Circular Std',
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: size.height*.05,),
                Image.asset(
           'assets/images/dimond.png',
           fit: BoxFit.cover,
         ),
         SizedBox(height: size.height*.02,),
         const Text(
                    'SHARE - INSPIRE - CONNECT',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Circular Std',
                      color: Colors.white,
                    ),
                  ),
                SizedBox(height: size.height*.01,),
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

