// ignore_for_file: constant_identifier_names

import 'package:curral_tech/autentic/auth.dart';
import 'package:curral_tech/flash/splash_2.dart';
import 'package:flutter/material.dart';

class MyWindget extends StatelessWidget {
  const MyWindget({Key? key}) : super(key: key);

  static const Splash = '/';
  static const Autentic = 'login';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Splash: (context) => const SplashTwe(),
        Autentic: (context) => const LoginPage(),
      },
    );
  }
}
