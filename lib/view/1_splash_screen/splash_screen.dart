import 'dart:async';

import 'package:bloom_buddy/view/2_login_register/login_register.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splash_Page extends StatefulWidget {
  const Splash_Page({super.key});

  @override
  State<Splash_Page> createState() => _Splash_PageState();
}

class _Splash_PageState extends State<Splash_Page> {
  @override
  void initState() {
    Timer(Duration(seconds:2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login_Register()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/animations/Animation - 1701861810236.json'),
      ),
    );
  }
}
