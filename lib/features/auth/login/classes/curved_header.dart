<<<<<<< HEAD
=======
import 'package:billezza/features/auth/login/widgets/bottom_curve_clipper.dart';
>>>>>>> d528a114c4fcd0e66961428822a92f895bfc9b59
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
<<<<<<< HEAD
      height: height,
      width: double.infinity,
      child: Stack(
        children: [
          // Background Image
          Positioned.fill(
            bottom: height * 0.29,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),

          // // Dark Overlay (اختياري لجعل النص أوضح)
=======
      
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
>>>>>>> d528a114c4fcd0e66961428822a92f895bfc9b59
          // Positioned.fill(
          //   child: Container(
          //     color: Colors.black.withOpacity(0.25),
          //   ),
          // ),

<<<<<<< HEAD
          // Curved White Shape
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: ClipPath(
          //     clipper: BottomCurveClipper(),
          //     child: Container(
          //       height: height * 0.30,
          //       color: Colors.white,
          //     ),
          //   ),
          // ),

          // Optional content (Logo / Text)
          if (child != null)
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: child!,
              ),
            ),
=======
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
>>>>>>> d528a114c4fcd0e66961428822a92f895bfc9b59
        ],
      ),
    );
  }
}
