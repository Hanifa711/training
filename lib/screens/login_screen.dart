import 'package:flutter/material.dart';
import 'package:note_app/logic/validator.dart';
import '../widgets/auth_text_field.dart';
import '../widgets/gradient_button.dart';
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
        final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SizedBox(
           // height: 50,
            width: 150,
            child: Image.asset(
              'assets/images/login.png',
             // fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            top: size.height * 0.40,
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
                      SizedBox(height: size.height*.02,),
                      AuthTextField(
                        hint: 'Email',
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        validator: Validators.email,
                      ),
                      const SizedBox(height: 15),
                              
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
                              
                      const SizedBox(height: 10),
                              
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'FORGOT PASSWORD',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                              
                      const SizedBox(height: 10),
                              
                      GradientButton(
                        text: 'LOG IN',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                           
                          }
                        },
                      ),
                              
                      const SizedBox(height: 15),
                              
                      const Text('OR LOG IN BY'),
                              
                      const SizedBox(height: 15),
                              
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          CircleAvatar(child: Icon(Icons.g_mobiledata)),
                          SizedBox(width: 20),
                          CircleAvatar(child: Icon(Icons.facebook)),
                        ],
                      ),
                              
                      const SizedBox(height: 15),
                              
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have account? "),
                          TextButton(
                            onPressed: () {},
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
