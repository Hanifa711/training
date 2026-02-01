import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../logic/validator.dart';
import '../widgets/auth/auth_text_field.dart';
import '../widgets/buttons/gradient_button.dart';
import '../theme/app_colors.dart';

class SetNewPasswordScreen extends StatefulWidget {
  const SetNewPasswordScreen({super.key});

  @override
  State<SetNewPasswordScreen> createState() => _SetNewPasswordScreenState();
}

class _SetNewPasswordScreenState extends State<SetNewPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();

  final _confirmpasswordController = TextEditingController();
    bool _showPassword = false;
    bool _showconfirmPassword = false;


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
                      Text("SET NEW PASSWORD",
                      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                            color: AppColors.primary
                          ),
                      ),
                      SizedBox(height:10.h,),
                      Container(
                        padding: EdgeInsets.all(15.sp),
                        decoration: BoxDecoration(
                          color:Color(0xffF1F1FE) ,
                          borderRadius: BorderRadius.circular(12.sp)
                        ),
                        child: Center(
                          child: Text("Type your new password",
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
                        hint: 'Password',
                        controller: _passwordController,
                        isPassword: !_showPassword,
                        validator:Validators.password,
                        suffix: IconButton(
                          icon: Icon(
                            _showPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _showPassword = !_showPassword;
                            });
                          },
                        ),
                      ),               

                      SizedBox(height:20.h,),

                       AuthTextField(
                        hint: 'Confirm Password',
                        controller: _confirmpasswordController,
                        isPassword: !_showconfirmPassword,
                        validator:(value) {
                          return Validators.confirmPassword(
                            value,
                            _passwordController.text,
                          );
                        },
                        suffix: IconButton(
                          icon: Icon(
                            _showconfirmPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _showconfirmPassword = !_showconfirmPassword;
                            });
                          },
                        ),
                      ),          
                              
                       SizedBox(height: 40.h),
                              
                      GradientButton(
                        text: 'Send',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                                Navigator.pushNamed(context, '/select_category'); 
                          } 
                        },
                      ),
                              
                       SizedBox(height: 40.h),
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
