import 'package:flutter/material.dart';

class SplashApp extends StatefulWidget {
  const SplashApp({Key? key}) : super(key: key);

  @override
  State<SplashApp> createState() => _SplashAppState();
}

class _SplashAppState extends State<SplashApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset('images/logo_curral.png')),
    );
  }
}
