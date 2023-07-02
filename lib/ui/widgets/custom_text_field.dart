import 'package:flutter/material.dart';

import '../../utils/theme.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final bool obsecureText;
  final TextEditingController? controller;
  final String? hintText;

  const CustomTextField({
    Key? key,
    required this.title,
    this.obsecureText = false,
    this.controller,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontWeight: semiBold,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          obscureText: obsecureText,
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            contentPadding: const EdgeInsets.all(12),
          ),
        ),
      ],
    );
  }
}
