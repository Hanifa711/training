import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatrtedButton extends StatelessWidget {
  const StatrtedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/sign_in');
                    },
                    child:Container(
                      width:30.w ,
                      height: 15.h,
                      child:Center(
                        child:  Text("data",
                      style: TextStyle(color: Colors.white),),
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(31, 208, 208, 208),
                        borderRadius: BorderRadius.circular(30)
                      ),

                    )
                  );
  }
}