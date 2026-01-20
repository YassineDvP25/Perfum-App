import 'package:billezza/core/theme/colors.dart';
import 'package:flutter/material.dart';

class AuthElevateButton extends StatelessWidget {
  const AuthElevateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
