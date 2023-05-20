import 'package:flutter/material.dart';
import 'package:flutter_ewallet/ui/widgets/custom_bank_card.dart';
import 'package:flutter_ewallet/ui/widgets/custom_button.dart';
import 'package:flutter_ewallet/utils/theme.dart';

class TopUpPage extends StatelessWidget {
  const TopUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Up'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            'Wallet',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/img_wallet.png',
                width: 80,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '8008 2208 1995',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Shayhana',
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Select Bank',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 14,
          ),
          const CustomBankCard(
            imageUrl: 'assets/img_bank_bca.png',
            bankName: 'Bank BCA',
            isSelected: true,
          ),
          const CustomBankCard(
            imageUrl: 'assets/img_bank_bni.png',
            bankName: 'Bank BNI',
          ),
          const CustomBankCard(
            imageUrl: 'assets/img_bank_mandiri.png',
            bankName: 'Bank Mandiri',
          ),
          const CustomBankCard(
            imageUrl: 'assets/img_bank_ocbc.png',
            bankName: 'Bank OCBC',
          ),
          const SizedBox(
            height: 18,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/topup-amount');
            },
          )
        ],
      ),
    );
  }
}
