import 'package:flutter/material.dart';
import 'package:rsarapp/screen/registerPage.dart';
import 'package:rsarapp/screen/splashScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  static const themeColour = Color(0xFF2C6B74);
  static const submitButton = Color(0xFF409DAC);

  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const MaterialApp
      (
      debugShowCheckedModeBanner: false,
      home: Scaffold
        (
        // appBar: AppBar(
        //
        //   backgroundColor: Colors.white,
        //   // centerTitle: true,
        //   // title: const Text("Register"),
        //   // titleTextStyle: const TextStyle(
        //   //   fontWeight: FontWeight.bold,
        //   //   fontSize: 20,
        //   // ),
        //   // leading: Padding(
        //   //   padding: const EdgeInsets.only(left: 5.0),
        //   //   child: Image.asset(
        //   //     "assets/logo.png",
        //   //   ),
        //   // ),
        // ),
        body: splahScreenPage(),
      ),
    );
  }
}


Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const RegisterPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}


