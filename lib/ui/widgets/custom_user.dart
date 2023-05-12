import 'package:flutter/material.dart';

import '../../utils/theme.dart';

class CustomUser extends StatelessWidget {
  final String imageUrl;
  final String userName;
  const CustomUser({
    Key? key,
    required this.imageUrl,
    required this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Column(
        children: [
          Container(
            width: 45,
            height: 45,
            margin: const EdgeInsets.only(right: 17),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: whiteColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imageUrl),
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            userName,
            style: blackTextStyle.copyWith(fontWeight: medium),
          )
        ],
      ),
    );
  }
}
