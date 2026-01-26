import 'package:billezza/core/constants/assets.dart';
import 'package:billezza/core/theme/colors.dart';
import 'package:billezza/features/auth/components/elevate_button.dart';
import 'package:billezza/features/auth/login/classes/curved_header.dart';

import 'package:billezza/features/auth/login/widgets/input_field.dart';
import 'package:billezza/features/auth/login/widgets/social_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          
          children: [
            /// ================= HEADER =================
            CurvedHeader(height: height * 0.37, imagePath: Assets.loginHeader),

            /// ================= CONTENT =================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24 , vertical: 25),

              child: Column(
                
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome back',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Italiana',
                      color: AppColors.backgroundDark,
                    ),
                  ),

                  const SizedBox(height: 28),

                  const Text(
                    'Enter your email and password',
                    style: TextStyle(fontSize: 14, color: Colors.grey ),
                  ),

                  const SizedBox(height: 10),

                  const InputField(
                    hint: 'Email-ID',
                    icon: Icons.email_outlined,
                  ),

                  const SizedBox(height: 16),

                  const InputField(
                    hint: 'Password',
                    icon: Icons.lock_outline,
                    obscure: true,
                  ),

                  const SizedBox(height: 6),

                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(color: AppColors.gold),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),
                  const AuthElevateButton(),

                  const SizedBox(height: 22),

                  const Center(
                    child: Text('or', style: TextStyle(color: Colors.grey)),
                  ),

                  const SizedBox(height: 18),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SocialButton(icon: Assets.googleLogo),
                      SizedBox(width: 16),
                      SocialButton(icon: Assets.appleLogo),
                    ],
                  ),

                  const SizedBox(height: 28),

                  Center(
                    child: RichText(
                      text: const TextSpan(
                        text: "Don't have an account ? ",
                        style: TextStyle(color: Colors.grey),
                        children: [
                          TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(
                              color: AppColors.gold,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 32),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
