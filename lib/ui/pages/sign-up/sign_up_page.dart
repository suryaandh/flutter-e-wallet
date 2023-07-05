import 'package:flutter/material.dart';
import 'package:flutter_ewallet/blocs/auth/auth_bloc.dart';
import 'package:flutter_ewallet/models/sign_up_model.dart';
import 'package:flutter_ewallet/ui/pages/sign-up/sign_up_profile.dart';
import 'package:flutter_ewallet/utils/shared.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/theme.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final nameController = TextEditingController(text: '');
  final emailController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');

  bool validate() {
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty) {
      return false;
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthFailed) {
            showCustomSnackBar(context, state.e);
          }
          if (state is AuthCheckEmailSuccess) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SignUpSetProfilePage(
                  data: SignUpModel(
                    name: nameController.text,
                    email: emailController.text,
                    password: passwordController.text,
                  ),
                ),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is AuthLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView(
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
          );
        },
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
          CustomTextField(
            title: 'Full name',
            controller: nameController,
          ),
          const SizedBox(
            height: 12,
          ),
          //Email Input
          CustomTextField(
            title: 'Email address',
            controller: emailController,
          ),
          const SizedBox(
            height: 12,
          ),
          //Password Input
          CustomTextField(
            title: 'Password',
            obscureText: true,
            controller: passwordController,
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
              if (validate()) {
                context
                    .read<AuthBloc>()
                    .add(AuthCheckEmail(emailController.text));
              } else {
                showCustomSnackBar(context, "Semua field harus diisi");
              }
            },
          ),
        ],
      ),
    );
  }
}
