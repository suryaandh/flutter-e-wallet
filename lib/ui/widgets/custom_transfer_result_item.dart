import 'package:flutter/material.dart';
import 'package:flutter_ewallet/utils/theme.dart';

class CustomTransferResultItem extends StatelessWidget {
  final String name;
  final String username;
  final String imageUrl;
  final bool isVerified;
  final bool isSelected;
  const CustomTransferResultItem({
    super.key,
    required this.name,
    required this.username,
    required this.imageUrl,
    this.isVerified = false,
    this.isSelected = false,
  });

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
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
            child: isVerified
                ? Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 18,
                      height: 18,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: greenColor,
                          size: 14,
                        ),
                      ),
                    ),
                  )
                : null,
          ),
          const SizedBox(
            height: 14,
          ),
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
            '${username}',
            style: blackTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
