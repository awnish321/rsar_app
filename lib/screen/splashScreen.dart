import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rsarapp/screen/registerPage.dart';

import '../main.dart';

class splahScreenPage extends StatefulWidget {
  const splahScreenPage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<splahScreenPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), ()=>
    // Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: const RegisterPage()))
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const RegisterPage(),))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(alignment: Alignment.center,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/splashBackground.jpg'),
            fit: BoxFit.cover),
      ),
    );
  }
}