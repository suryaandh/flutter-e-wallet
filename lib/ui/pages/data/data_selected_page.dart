import 'package:flutter/material.dart';
import 'package:flutter_ewallet/ui/widgets/custom_data_package.dart';
import 'package:flutter_ewallet/ui/widgets/custom_text_field.dart';
import 'package:flutter_ewallet/ui/widgets/custom_transfer_result_item.dart';

import '../../../utils/theme.dart';
import '../../widgets/custom_button.dart';

class DataSelectedPage extends StatelessWidget {
  const DataSelectedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Paket Data"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 30),
          CustomTextField(
            title: "Phone Number",
            hintText: '+628',
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            "Select Package",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 14),
          Wrap(
            spacing: 17,
            runSpacing: 17,
            children: const [
              CustomDataPackage(
                amount: 10,
                price: 218000,
              ),
              CustomDataPackage(
                amount: 20,
                price: 318000,
                isSelected: true,
              ),
              CustomDataPackage(
                amount: 40,
                price: 518000,
              ),
              CustomDataPackage(
                amount: 50,
                price: 618000,
              ),
            ],
          ),
          const SizedBox(
            height: 85,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () async {
              if (await Navigator.pushNamed(context, '/pin') == true) {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/data-success', (route) => false);
              }
            },
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
