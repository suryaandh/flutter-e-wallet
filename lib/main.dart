import 'package:flutter/material.dart';
import 'package:flutter_ewallet/ui/pages/profile/edit_profile_page.dart';
import 'package:flutter_ewallet/ui/pages/profile/edit_profile_pin_page.dart';
import 'package:flutter_ewallet/ui/pages/home_page.dart';
import 'package:flutter_ewallet/ui/pages/onboarding_page.dart';
import 'package:flutter_ewallet/ui/pages/profile/success_edit_profile.dart';
import 'package:flutter_ewallet/ui/pages/profile/profile_page.dart';
import 'package:flutter_ewallet/ui/pages/profile/pin_page.dart';
import 'package:flutter_ewallet/ui/pages/sign-up/sign_up_page.dart';
import 'package:flutter_ewallet/ui/pages/sign-up/sign_up_succes.dart';
import 'package:flutter_ewallet/ui/pages/sign_in_page.dart';
import 'package:flutter_ewallet/ui/pages/sign-up/sign_up_profile.dart';
import 'package:flutter_ewallet/ui/pages/sign-up/sign_up_verify_profile.dart';
import 'package:flutter_ewallet/ui/pages/splash_page.dart';
import 'package:flutter_ewallet/ui/pages/top_up_amount_page.dart';
import 'package:flutter_ewallet/ui/pages/top_up_page.dart';
import 'package:flutter_ewallet/ui/pages/top_up_success.dart';
import 'package:flutter_ewallet/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: lightBackgroundColor,
          appBarTheme: AppBarTheme(
            backgroundColor: lightBackgroundColor,
            centerTitle: true,
            elevation: 0,
            iconTheme: IconThemeData(color: blackColor),
            titleTextStyle: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          )),
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
        '/profile': (context) => const ProfilePage(),
        '/pin': (context) => const PinPage(),
        '/profile-edit': (context) => const EditProfilePage(),
        '/profile-edit-success': (context) => const ProfileSuccesPage(),
        '/edit-pin': (context) => const EditProfilePinPage(),
        '/topup': (context) => const TopUpPage(),
        '/topup-amount': (context) => const TopUpAmountPage(),
        '/topup-success': (context) => const TopUpSuccessPage(),
      },
    );
  }
}
