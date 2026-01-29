import 'package:billezza/core/constants/assets.dart';
import 'package:billezza/core/theme/colors.dart';
import 'package:billezza/features/auth/animation/auth_animation_mixin.dart';
import 'package:billezza/features/auth/classes/curved_clipper.dart';
import 'package:billezza/features/auth/components/elevate_button.dart';
import 'package:billezza/features/auth/login/widgets/input_field.dart';
import 'package:billezza/features/auth/views/login_screen.dart';
import 'package:billezza/features/home/views/home_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen>
    with SingleTickerProviderStateMixin, AuthAnimationMixin {
  @override
  void initState() {
    super.initState();
    initAuthAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6F1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Animated Header
            FadeTransition(
              opacity: fade,
              child: SlideTransition(
                position: slideDown,
                child: ClipPath(
                  clipper: CurvedClipper(),
                  child: Image.asset(
                    Assets.signUpHeader,
                    height: 350,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Animated Form
            FadeTransition(
              opacity: fade,
              child: SlideTransition(
                position: slideUp,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Welcome',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Italiana',
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        'Create an account to sign up',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 14,
                        ),
                      ),

                      const SizedBox(height: 28),

                      const InputField(
                        hint: 'Email',
                        icon: Icons.email_outlined,
                      ),
                      const SizedBox(height: 16),

                      const InputField(
                        hint: 'Phone',
                        icon: Icons.phone_outlined,
                      ),
                      const SizedBox(height: 16),

                      const InputField(
                        hint: 'Password',
                        icon: Icons.lock_outline,
                        obscure: true,
                      ),

                      const SizedBox(height: 24),

                      // Button
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: AnimatedAuthButton(
                          text: 'Sign Up',
                          onPressed: () {
                            // Handle Sign Up action
                            return Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),

                      const SizedBox(height: 24),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            text: "Don't have an account ? ",
                            style: const TextStyle(color: Colors.grey),
                            children: [
                              TextSpan(
                                text: 'Sign Up',
                                style: const TextStyle(
                                  color: AppColors.gold,
                                  fontWeight: FontWeight.w600,
                                ),
                                recognizer:
                                    TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (_) => LoginScreen(),
                                          ),
                                        );
                                      },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
