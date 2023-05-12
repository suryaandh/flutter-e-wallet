import 'package:flutter/material.dart';
import 'package:flutter_ewallet/ui/pages/home_page.dart';
import 'package:flutter_ewallet/ui/pages/onboarding_page.dart';
import 'package:flutter_ewallet/ui/pages/profile_page.dart';
import 'package:flutter_ewallet/ui/pages/sign-up/sign_up_page.dart';
import 'package:flutter_ewallet/ui/pages/sign-up/sign_up_succes.dart';
import 'package:flutter_ewallet/ui/pages/sign_in_page.dart';
import 'package:flutter_ewallet/ui/pages/sign-up/sign_up_profile.dart';
import 'package:flutter_ewallet/ui/pages/sign-up/sign_up_verify_profile.dart';
import 'package:flutter_ewallet/ui/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: SplashPage(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter e-wallet',
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnBoardingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/sign-up-profile': (context) => SignUpSetProfilePage(),
        '/sign_up_verify_profile': (context) => SignUpVerifyProfilePage(),
        '/sign_up_succes': (context) => const SignUpSuccesPage(),
        '/home': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage()
      },
    );
  }
}
