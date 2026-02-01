import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../logic/validator.dart';
import '../widgets/auth/auth_text_field.dart';
import '../widgets/buttons/gradient_button.dart';
import '../theme/app_colors.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
             top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/iclick.png',
              fit: BoxFit.cover,
                height: 312.h,
               width: 375.w,
            ),
          ),
          Positioned.fill(
            top: 272.h,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft:Radius.circular(28) ,topRight: Radius.circular(28))
              ),
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height:20.h,),
                      Text("VERIFICATION",
                      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                            color: AppColors.primary
                          ),
                      ),
                      SizedBox(height:14.h,),
                      Container(
                        padding: EdgeInsets.all(15.sp),
                        decoration: BoxDecoration(
                          color:Color(0xffF1F1FE) ,
                          borderRadius: BorderRadius.circular(12.sp)
                        ),
                        child: Center(
                          child: Text("A message with verification code was sent to your mobile phone.",
                            textAlign: TextAlign.center,
                            style:Theme.of(context).textTheme.headlineMedium!.copyWith(
                            fontWeight: FontWeight.w500,
                              fontSize: 18.sp,
                              color: AppColors.black
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height:40.h,),
                      AuthTextField(
                        hint: 'Type verification code',
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        validator:Validators.notEmpty,
                      ),
                      SizedBox(height: 20.h),
                      TextButton(
                        onPressed: () {
                           Navigator.pushNamed(context, '/select_category');
                        },
                        child:  Text(
                          "Don't receive the code",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.black,
                           // fontWeight: FontWeight.w600,
                            fontSize: 18.sp,
                          ),
                        ),
                      ),
                              
                       SizedBox(height: 30.h),
                              
                      GradientButton(
                        text: 'VERIFY',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                           
                          }
                        },
                      ),
                              
                       SizedBox(height: 55.h),
                       Image.asset(
                         'assets/images/three_dimonds.png',
                         fit: BoxFit.cover,
                           height: 90.h,
                          width: 224.w,
                       ),       
                     
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
