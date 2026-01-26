import 'package:billezza/features/auth/login/widgets/bottom_curve_clipper.dart';
import 'package:flutter/material.dart';

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
            child: Image.asset(
              imagePath,
              fit: BoxFit.fitWidth,
            ),
          ),

          // Dark Overlay (اختياري لجعل النص أوضح)
          // Positioned.fill(
          //   child: Container(
          //     color: Colors.black.withOpacity(0.25),
          //   ),
          // ),

          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     height: height * 0.30,
          //     color: Colors.white,
          //   ),
          // ),

          // // Optional content (Logo / Text)
          // if (child != null)
          //   Positioned.fill(
          //     child: Padding(
          //       padding: const EdgeInsets.all(24),
          //       child: child!,
          //     ),
          //   ),
        ],
      ),
    );
  }
}
