import 'package:flutter/material.dart';

import '../../../utils/theme.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(22),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: whiteColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    //UserName Input
                    const CustomTextField(title: 'Username'),
                    const SizedBox(
                      height: 12,
                    ),
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
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomFilledButton(
                      title: 'Update Now',
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/profile-edit-success', (route) => false);
                      },
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
