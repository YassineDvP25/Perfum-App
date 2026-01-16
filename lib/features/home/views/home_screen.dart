import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // تأكد إن ScreenUtilInit مُعرف في main.dart
    final width = MediaQuery.of(context).size.width;
    final isNarrow = width < 760;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 10, 10, 10),
      body: SafeArea(
        child:Column(children: [],)
      ),
    );
  }
}

