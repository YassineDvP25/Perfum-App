import 'package:billezza/core/constants/assets.dart';
import 'package:billezza/core/theme/colors.dart';
import 'package:billezza/features/auth/animation/auth_animation_mixin.dart';
import 'package:billezza/features/auth/classes/curved_clipper.dart';
import 'package:billezza/features/auth/components/elevate_button.dart';
import 'package:billezza/features/auth/login/widgets/input_field.dart';
import 'package:billezza/features/auth/login/widgets/social_button.dart';
import 'package:billezza/features/auth/views/sign_up.dart';
import 'package:billezza/features/home/views/home_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
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
            /// ================= HEADER =================
              FadeTransition(
              opacity: fade,
              child: SlideTransition(
                position: slideDown,
                child: ClipPath(
                  clipper: CurvedClipper(),
                  child: Image.asset(
                    Assets.loginHeader,
                    height: 350,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            /// ================= CONTENT =================
            FadeTransition(
              opacity: fade,
              child: SlideTransition(
                position: slideUp,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 25,
                  ),
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
                        style: TextStyle(fontSize: 14, color: Colors.grey),
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
                      AnimatedAuthButton(
                        text: "Log In",
                        onPressed: () {

                           return Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const HomeScreen(),
                            ),
                          );
                        },
                      ),

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
                                            builder:
                                                (_) => const SignUpScreen(),
                                          ),
                                        );
                                      },
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 32),
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
