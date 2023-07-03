import 'package:flutter/material.dart';
import 'package:flutter_ewallet/ui/widgets/custom_data_provider_item.dart';
import 'package:flutter_ewallet/utils/shared.dart';
import 'package:flutter_ewallet/utils/theme.dart';

import '../../widgets/custom_button.dart';

class DataProviderPage extends StatelessWidget {
  const DataProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Beli Data"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 30),
          Text(
            "From Wallet",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/img_wallet.png',
                width: 80,
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "0000 0000 0000 0000",
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    "Balance ${formatCurrency(180000000)}",
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 40),
          Text(
            "Select Provider",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 14),
          const CustomDataProviderItem(
            imageUrl: 'assets/img_provider_telkomsel.png',
            name: 'Telkomsel',
            isSelected: true,
          ),
          const CustomDataProviderItem(
            imageUrl: 'assets/img_provider_indosat.png',
            name: 'Indosat Ooredoo',
          ),
          const CustomDataProviderItem(
            imageUrl: 'assets/img_provider_singtel.png',
            name: 'Singtel ID',
          ),
          const SizedBox(height: 130),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/data-selected');
            },
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
