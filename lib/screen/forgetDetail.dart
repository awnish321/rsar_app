import 'package:flutter/material.dart';
import 'forgetDetailScreen.dart';

class ForgetDetails extends StatelessWidget {
  const ForgetDetails({super.key});

  static const themeColour = Color(0xFF2C6B74);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context).copyWith(
        colorScheme: Theme.of(context).colorScheme.copyWith(
          primary: const Color(0xFF2C6B74),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const ForgetDetailScreen(),
    );
  }
}
