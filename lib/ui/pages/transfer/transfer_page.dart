import 'package:flutter/material.dart';
import 'package:flutter_ewallet/ui/widgets/custom_button.dart';
import 'package:flutter_ewallet/ui/widgets/custom_recent_user_item.dart';
import 'package:flutter_ewallet/ui/widgets/custom_text_field.dart';
import 'package:flutter_ewallet/ui/widgets/custom_transfer_result_item.dart';
import 'package:flutter_ewallet/utils/theme.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transfer'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            title: 'Search',
            hintText: 'by username',
          ),
          // buildRecentUsers(),
          buildResult(),
          const SizedBox(
            height: 274,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/transfer-amount');
            },
          ),
        ],
      ),
    );
  }

  Widget buildRecentUsers() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Users',
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const CustomRecentUserItem(
            imageUrl: 'assets/img_friend1.png',
            name: 'Yonna jie',
            username: '@yoenna',
            isVerified: true,
          ),
          const CustomRecentUserItem(
            imageUrl: 'assets/img_friend2.png',
            name: 'Elenna jie',
            username: '@lenna',
            isVerified: true,
          ),
          const CustomRecentUserItem(
            imageUrl: 'assets/img_friend3.png',
            name: 'Jie jie',
            username: '@jie',
            isVerified: false,
          ),
        ],
      ),
    );
  }

  Widget buildResult() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Result',
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Wrap(
            spacing: 17,
            runSpacing: 17,
            children: [
              CustomTransferResultItem(
                imageUrl: 'assets/img_friend1.png',
                name: 'Yoona Jie',
                username: '@yoenna',
                isVerified: true,
              ),
              CustomTransferResultItem(
                imageUrl: 'assets/img_friend2.png',
                name: 'Elenna Jie',
                username: '@elenna',
                isVerified: true,
                isSelected: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
