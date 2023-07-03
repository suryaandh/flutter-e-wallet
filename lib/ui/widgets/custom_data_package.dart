import 'package:flutter/material.dart';
import 'package:flutter_ewallet/utils/shared.dart';

import '../../utils/theme.dart';

class CustomDataPackage extends StatelessWidget {
  final int amount;
  final int price;
  final bool isSelected;
  const CustomDataPackage(
      {super.key,
      required this.amount,
      required this.price,
      this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 177,
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 22,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isSelected ? blueColor : whiteColor,
          width: 2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 14,
          ),
          Text(
            '${amount} GB',
            style: blackTextStyle.copyWith(
              fontSize: 32,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            formatCurrency(price),
            style: blackTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
    ;
  }
}
