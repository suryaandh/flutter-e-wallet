import 'package:flutter/material.dart';
import 'package:flutter_ewallet/utils/theme.dart';

class CustomBankCard extends StatelessWidget {
  final String imageUrl;
  final String bankName;
  final bool isSelected;
  const CustomBankCard(
      {Key? key,
      required this.imageUrl,
      required this.bankName,
      this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: whiteColor,
        border: Border.all(color: isSelected ? blueColor : whiteColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imageUrl,
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                bankName,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              Text(
                '50 Min',
                style: blackTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
