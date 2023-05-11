import 'package:flutter/material.dart';

import '../../../utils/theme.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';

class SignUpPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.only(top: 100, bottom: 100),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/img_logo_light.png',
                ),
              ),
            ),
          ),
          Text(
            'Join Us to Unlock&\nYour Growth',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
          _textFieldSection(context),
          CustomTextButton(
            title: 'Sign in',
            onPressed: () {
              Navigator.pushNamed(context, '/sign-in');
            },
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }

  Widget _textFieldSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Full Name Input
          const CustomTextField(title: 'Full name'),
          const SizedBox(
            height: 12,
          ),
          //Email Input
          const CustomTextField(title: 'Email address'),
          const SizedBox(
            height: 12,
          ),
          //Password Input
          const CustomTextField(
            title: 'Password',
            obsecureText: true,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password',
                style: blueTextStyle,
              ),
            ),
          ),

          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/sign-up-profile');
            },
          ),
        ],
      ),
    );
  }
}
