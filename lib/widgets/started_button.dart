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
                      width:162.w ,
                      height: 52.h,
                      child:Center(
                        child:  Text("GET STARTED",
                      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            color: Colors.white
                          ),
                      ),),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(57, 255, 255, 255),
                        borderRadius: BorderRadius.circular(30)
                      ),

                    )
                  );
  }
}