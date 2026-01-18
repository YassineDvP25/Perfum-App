import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String icon;

  const SocialButton({required this.icon});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 22,
      backgroundColor: Colors.grey.shade200,
      child: Image.asset(icon, width: 20),
    );
  }
}
