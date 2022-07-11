import 'package:flutter/material.dart';

class SplashTwe extends StatefulWidget {
  const SplashTwe({Key? key}) : super(key: key);

  @override
  State<SplashTwe> createState() => _SplashTweState();
}

class _SplashTweState extends State<SplashTwe> {
  void inicializeSplash(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 5));
    if (!mounted) return;

    Navigator.pushReplacementNamed(context, 'login');
  }

  @override
  void initState() {
    inicializeSplash(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blue, Color(0xff7AA41F)])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(child: Image.asset('images/logo_splash.png')),
      ),
    );
  }
}
