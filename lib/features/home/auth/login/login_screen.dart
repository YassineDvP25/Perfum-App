// // features/auth/login/login_screen.dart
// import 'package:billezza/core/constants/assets.dart';
// import 'package:billezza/core/theme/colors.dart';
// import 'package:flutter/material.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             /// ================= HEADER =================
//           SizedBox(

//   height: MediaQuery.of(context).size.height * 0.42,
//   width: double.infinity,
//   child: Stack(

//     children: [
//       /// Background Image
//       Positioned.fill(
//         child: Image.asset(
//           Assets.loginHeader,
//           fit: BoxFit.cover,
//         ),
//       ),

//       /// Dark overlay
//       Positioned.fill(
//         child: Container(
//           color: Colors.black.withOpacity(0.28),
//         ),
//       ),

//       /// LEFT WHITE ORGANIC SHAPE (مثل المثال تمامًا)
//       Positioned(
//         left: 0,
//         top: 0,
//         bottom: 0,
//         child: ClipPath(
//           clipper: _LeftOrganicClipper(),
//           child: Container(
//             width: 120,
//             color: Colors.white,
//           ),
//         ),
//       ),

//       /// BOTTOM CURVE
//       Align(
//         alignment: Alignment.bottomCenter,
//         child: ClipPath(
//           clipper: _BottomLuxuryCurveClipper(),
//           child: Container(
//             height: 160,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     ],
//   ),
// ),


//             /// ================= CONTENT =================
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 24),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const SizedBox(height: 8),

//                   const Text(
//                     'Welcome back',
//                     style: TextStyle(
//                       fontSize: 28,
//                       fontWeight: FontWeight.w600,
//                       color: AppColors.backgroundDark,
//                     ),
//                   ),

//                   const SizedBox(height: 6),

//                   const Text(
//                     'Enter your email and password',
//                     style: TextStyle(
//                       fontSize: 14,
//                       color: Colors.grey,
//                     ),
//                   ),

//                   const SizedBox(height: 28),

//                   const _InputField(
//                     hint: 'Email-ID',
//                     icon: Icons.email_outlined,
//                   ),

//                   const SizedBox(height: 16),

//                   const _InputField(
//                     hint: 'Password',
//                     icon: Icons.lock_outline,
//                     obscure: true,
//                   ),

//                   const SizedBox(height: 6),

//                   Align(
//                     alignment: Alignment.centerRight,
//                     child: TextButton(
//                       onPressed: () {},
//                       child: const Text(
//                         'Forgot Password?',
//                         style: TextStyle(color: AppColors.gold),
//                       ),
//                     ),
//                   ),

//                   const SizedBox(height: 10),

//                   SizedBox(
//                     width: double.infinity,
//                     height: 48,
//                     child: ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: AppColors.gold,
//                         elevation: 0,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(24),
//                         ),
//                       ),
//                       child: const Text(
//                         'Log In',
//                         style: TextStyle(
//                           fontSize: 16,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),

//                   const SizedBox(height: 22),

//                   const Center(
//                     child: Text(
//                       'or',
//                       style: TextStyle(color: Colors.grey),
//                     ),
//                   ),

//                   const SizedBox(height: 18),

//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: const [
//                       _SocialButton(icon: Assets.googleLogo),
//                       SizedBox(width: 16),
//                       _SocialButton(icon: Assets.appleLogo),
//                     ],
//                   ),

//                   const SizedBox(height: 28),

//                   Center(
//                     child: RichText(
//                       text: const TextSpan(
//                         text: "Don't have an account ? ",
//                         style: TextStyle(color: Colors.grey),
//                         children: [
//                           TextSpan(
//                             text: 'Sign Up',
//                             style: TextStyle(
//                               color: AppColors.gold,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),

//                   const SizedBox(height: 32),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// /// ================= CLIPPER =================
// class _BottomLuxuryCurveClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();

//     path.moveTo(0, 60);

//     path.quadraticBezierTo(
//       size.width * 0.5,
//       -30,
//       size.width,
//       60,
//     );

//     path.lineTo(size.width, size.height);
//     path.lineTo(0, size.height);
//     path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }

// class _LeftOrganicClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();

//     path.moveTo(0, 0);
//     path.lineTo(size.width * 0.55, 0);

//     path.quadraticBezierTo(
//       size.width,
//       size.height * 0.25,
//       size.width * 0.55,
//       size.height * 0.5,
//     );

//     path.quadraticBezierTo(
//       0,
//       size.height * 0.75,
//       size.width * 0.55,
//       size.height,
//     );

//     path.lineTo(0, size.height);
//     path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }




// /// ================= INPUT =================
// class _InputField extends StatelessWidget {
//   final String hint;
//   final IconData icon;
//   final bool obscure;

//   const _InputField({
//     required this.hint,
//     required this.icon,
//     this.obscure = false,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       obscureText: obscure,
//       decoration: InputDecoration(
//         prefixIcon: Icon(icon, color: AppColors.gold),
//         hintText: hint,
//         filled: true,
//         fillColor: Colors.white,
//         contentPadding: const EdgeInsets.symmetric(vertical: 14),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(24),
//           borderSide: BorderSide(
//             color: AppColors.gold.withOpacity(0.4),
//           ),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(24),
//           borderSide: const BorderSide(color: AppColors.gold),
//         ),
//       ),
//     );
//   }
// }

// /// ================= SOCIAL =================
// class _SocialButton extends StatelessWidget {
//   final String icon;

//   const _SocialButton({required this.icon});

//   @override
//   Widget build(BuildContext context) {
//     return CircleAvatar(
//       radius: 22,
//       backgroundColor: Colors.grey.shade200,
//       child: Image.asset(icon, width: 20),
//     );
//   }
// }
