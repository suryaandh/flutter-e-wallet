import 'package:flutter/material.dart';
import 'package:flutter_ewallet/utils/theme.dart';

class CustomRecentUserItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String username;
  final bool isVerified;
  const CustomRecentUserItem(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.username,
      this.isVerified = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Row(
        children: [
          Container(
            width: 45,
            height: 45,
            margin: const EdgeInsets.only(right: 14),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imageUrl),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                username,
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const Spacer(),
          if (isVerified)
            Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: greenColor,
                  size: 14,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'Verified',
                  style: greenTextStyle.copyWith(
                    fontSize: 11,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
