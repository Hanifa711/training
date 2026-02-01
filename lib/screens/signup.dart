import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../logic/validator.dart';
import '../widgets/auth/auth_text_field.dart';
import '../widgets/buttons/gradient_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                              
                      SizedBox(height: 100.h),
                              
                      GradientButton(
                        text: 'SIGN IN',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                           Navigator.pushNamed(context, '/verify');

                          }
                        },
                      ),
                              
                      SizedBox(height: 40.h),
                                                            
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("You have account? "),
                          TextButton(
                            onPressed: () {
                               Navigator.pushNamed(context, '/sign_in');

                            },
                            child: const Text(
                              'LOG IN',
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
