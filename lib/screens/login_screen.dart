import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../logic/validator.dart';
import '../widgets/auth/auth_text_field.dart';
import '../widgets/buttons/gradient_button.dart';
import '../theme/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _showPassword = false;

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
              'assets/images/login.png',
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
                      SizedBox(height:40.h,),
                      AuthTextField(
                        hint: 'Email',
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        validator: Validators.email,
                      ),
                      SizedBox(height: 20.h),
                              
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
                              
                      SizedBox(height: 30.h),
                              
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/forgetpassword');
                          
                        },
                        child:  Text(
                          'FORGOT PASSWORD',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp
                          ),
                        ),
                      ),
                              
                       SizedBox(height: 30.h),
                              
                      GradientButton(
                        text: 'LOG IN',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                           Navigator.pushNamed(context, '/verify');
                          }
                        },
                      ),
                              
                      SizedBox(height: 40.h),
                              
                      const Text('OR LOG IN BY'),
                              
                      const SizedBox(height: 15),
                              
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          CircleAvatar(child: Icon(Icons.g_mobiledata)),
                          SizedBox(width: 20),
                          CircleAvatar(child: Icon(Icons.facebook_outlined)),
                        ],
                      ),
                              
                      const SizedBox(height: 15),
                              
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have account? "),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/sign_up');
                            },
                            child: const Text(
                              'SIGN UP',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
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
