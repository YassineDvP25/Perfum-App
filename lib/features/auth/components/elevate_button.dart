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


class AnimatedAuthButton extends StatefulWidget {
  final String text;
  final Future<void> Function() onPressed;

  const AnimatedAuthButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  State<AnimatedAuthButton> createState() => _AnimatedAuthButtonState();
}

class _AnimatedAuthButtonState extends State<AnimatedAuthButton> {
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 52,
      width: _loading ? 52 : double.infinity,
      child: ElevatedButton(
        onPressed: _loading
            ? null
            : () async {
                setState(() => _loading = true);
                await widget.onPressed();
                setState(() => _loading = false);
              },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.gold,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_loading ? 26 : 14),
          ),
        ),
        child: _loading
            ? const SizedBox(
                width: 22,
                height: 22,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Colors.white,
                ),
              )
            : Text(widget.text),
      ),
    );
  }
}
