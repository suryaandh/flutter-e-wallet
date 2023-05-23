import 'package:flutter/material.dart';
import 'package:flutter_ewallet/ui/widgets/custom_button.dart';
import 'package:flutter_ewallet/ui/widgets/custom_input_pin_button.dart';
import 'package:flutter_ewallet/utils/theme.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class TopUpAmountPage extends StatefulWidget {
  const TopUpAmountPage({super.key});

  @override
  State<TopUpAmountPage> createState() => _TopUpAmountPageState();
}

class _TopUpAmountPageState extends State<TopUpAmountPage> {
  final TextEditingController amountController =
      TextEditingController(text: '0');

  @override
  void initState() {
    super.initState();

    amountController.addListener(
      () {
        final text = amountController.text;

        amountController.value = amountController.value.copyWith(
          text: NumberFormat.currency(
            locale: 'id',
            decimalDigits: 0,
            symbol: '',
          ).format(
            int.parse(
              text.replaceAll('.', ''),
            ),
          ),
        );
      },
    );
  }

  addAmount(String number) {
    if (amountController.text == '0') {
      amountController.text = '';
    }
    setState(() {
      amountController.text = amountController.text + number;
    });
  }

  deleteAmount() {
    if (amountController.text.isNotEmpty) {
      setState(() {
        amountController.text = amountController.text
            .substring(0, amountController.text.length - 1);
        if (amountController.text == '') {
          amountController.text = '0';
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 58),
          children: [
            Center(
              child: Text(
                'Total Amount',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
            ),
            const SizedBox(
              height: 65,
            ),
            Align(
              child: SizedBox(
                width: 200,
                child: TextFormField(
                  controller: amountController,
                  cursorColor: greyColor,
                  enabled: false,
                  style: whiteTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: medium,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Text(
                      'RP',
                      style: whiteTextStyle.copyWith(
                        fontSize: 32,
                        fontWeight: medium,
                      ),
                    ),
                    disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 66,
            ),
            Wrap(
              spacing: 40,
              runSpacing: 40,
              children: [
                CustomInputPinButton(
                  text: '1',
                  onTap: () {
                    addAmount('1');
                  },
                ),
                CustomInputPinButton(
                  text: '2',
                  onTap: () {
                    addAmount('2');
                  },
                ),
                CustomInputPinButton(
                  text: '3',
                  onTap: () {
                    addAmount('3');
                  },
                ),
                CustomInputPinButton(
                  text: '4',
                  onTap: () {
                    addAmount('4');
                  },
                ),
                CustomInputPinButton(
                  text: '5',
                  onTap: () {
                    addAmount('5');
                  },
                ),
                CustomInputPinButton(
                  text: '6',
                  onTap: () {
                    addAmount('6');
                  },
                ),
                CustomInputPinButton(
                  text: '7',
                  onTap: () {
                    addAmount('7');
                  },
                ),
                CustomInputPinButton(
                  text: '8',
                  onTap: () {
                    addAmount('8');
                  },
                ),
                CustomInputPinButton(
                  text: '9',
                  onTap: () {
                    addAmount('9');
                  },
                ),
                const SizedBox(
                  height: 60,
                  width: 60,
                ),
                CustomInputPinButton(
                  text: '0',
                  onTap: () {
                    addAmount('0');
                  },
                ),
                GestureDetector(
                  onTap: () {
                    deleteAmount();
                  },
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: numberBackgroundColor,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back,
                        color: whiteColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            CustomFilledButton(
              title: 'Checkout Now',
              onPressed: _launchUrl,
            ),
            const SizedBox(
              height: 25,
            ),
            CustomTextButton(
              title: 'Term & Conditions',
              onPressed: () {},
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }

  final Uri _url = Uri.parse('https://demo.midtrans.com/');

  Future<void> _launchUrl() async {
    if (await Navigator.pushNamed(context, '/pin') == true) {
      // launchUrl(_url);
      Navigator.pushNamedAndRemoveUntil(
          context, '/topup-success', (route) => false);
      // } else if (await  ==
      //     true) {
      //   throw Exception('Could not launch $_url');
    }
  }
}
