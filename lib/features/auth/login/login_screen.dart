// features/auth/login/login_screen.dart
import 'package:billezza/core/constants/assets.dart';
import 'package:billezza/core/theme/colors.dart';

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
          CurvedHeader(height: height * 0.4, imagePath: Assets.loginHeader),
            /// ================= CONTENT =================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    'Welcome back',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: AppColors.backgroundDark,
                    ),
                  ),

                  const SizedBox(height: 6),

                  const Text(
                    'Enter your email and password',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),

                  const SizedBox(height: 28),

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

                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.gold,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      child: const Text(
                        'Log In',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
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

class CurvedHeader extends StatelessWidget {
  final double height;
  final String imagePath;
  final Widget? child;

  const CurvedHeader({
    super.key,
    required this.height,
    required this.imagePath,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: Stack(
        children: [
          // Background Image
          Positioned.fill(
            bottom: height * 0.24,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),

          // // Dark Overlay (اختياري لجعل النص أوضح)
          // Positioned.fill(
          //   child: Container(
          //     color: Colors.black.withOpacity(0.25),
          //   ),
          // ),

          // Curved White Shape
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: BottomCurveClipper(),
              child: Container(
                height: height * 0.35,
                color: Colors.white,
              ),
            ),
          ),

          // Optional content (Logo / Text)
          if (child != null)
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: child!,
              ),
            ),
        ],
      ),
    );
  }
}
class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.lineTo(0, 40);

    path.quadraticBezierTo(
      size.width * 0.5,
      -40,
      size.width,
      40,
    );

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
