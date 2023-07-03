import 'package:flutter/material.dart';
import 'package:flutter_ewallet/ui/widgets/custom_input_pin_button.dart';
import 'package:flutter_ewallet/utils/shared.dart';
import 'package:flutter_ewallet/utils/theme.dart';

class PinPage extends StatefulWidget {
  const PinPage({super.key});

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  final TextEditingController pinController = TextEditingController(text: '');

  addPin(String number) {
    if (pinController.text.length < 6) {
      setState(() {
        pinController.text = pinController.text + number;
      });
    }

    if (pinController.text.length == 6) {
      if (pinController.text.length == 6 && pinController.text == '123123') {
        Navigator.pop(context, true);
      } else {
        showCustomSnackBar(
            context, 'PIN yang anda masukkan salah. Silahkan ciba lagi');
      }
    }
  }

  deletePin() {
    if (pinController.text.isNotEmpty) {
      setState(() {
        pinController.text =
            pinController.text.substring(0, pinController.text.length - 1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 58),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sha PIN',
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 72,
                ),
                SizedBox(
                  width: 200,
                  child: TextFormField(
                    controller: pinController,
                    obscureText: true,
                    obscuringCharacter: '*',
                    cursorColor: greyColor,
                    enabled: false,
                    style: whiteTextStyle.copyWith(
                      fontSize: 36,
                      fontWeight: medium,
                      letterSpacing: 16,
                    ),
                    decoration: InputDecoration(
                      disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: greyColor,
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
                        addPin('1');
                      },
                    ),
                    CustomInputPinButton(
                      text: '2',
                      onTap: () {
                        addPin('2');
                      },
                    ),
                    CustomInputPinButton(
                      text: '3',
                      onTap: () {
                        addPin('3');
                      },
                    ),
                    CustomInputPinButton(
                      text: '4',
                      onTap: () {
                        addPin('4');
                      },
                    ),
                    CustomInputPinButton(
                      text: '5',
                      onTap: () {
                        addPin('5');
                      },
                    ),
                    CustomInputPinButton(
                      text: '6',
                      onTap: () {
                        addPin('6');
                      },
                    ),
                    CustomInputPinButton(
                      text: '7',
                      onTap: () {
                        addPin('7');
                      },
                    ),
                    CustomInputPinButton(
                      text: '8',
                      onTap: () {
                        addPin('8');
                      },
                    ),
                    CustomInputPinButton(
                      text: '9',
                      onTap: () {
                        addPin('');
                      },
                    ),
                    const SizedBox(
                      height: 60,
                      width: 60,
                    ),
                    CustomInputPinButton(
                      text: '0',
                      onTap: () {
                        addPin('0');
                      },
                    ),
                    GestureDetector(
                      onTap: () {
                        deletePin();
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
