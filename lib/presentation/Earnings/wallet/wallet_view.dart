import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:salhurry/utilities/constants/shared/theme.dart';

class WalletView extends StatelessWidget {
  const WalletView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: background,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            children: [
              Text(
                'Top up your \nwallet number',
                style: semibold.copyWith(
                  fontSize: 18,
                ),
              ),
              Text(
                'Insert amount (Min. Rp 10.000)',
                style: regular.copyWith(
                  fontSize: 12,
                  color: darkGrey,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              TextField(
                autocorrect: false,
                decoration: InputDecoration(
                  prefixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: Text(
                          'Rs',
                          style: semibold.copyWith(
                            fontSize: 18,
                            color: grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                  hintText: '0',
                  hintStyle: semibold.copyWith(fontSize: 18),
                ),
                textAlign: TextAlign.end,
                style: semibold.copyWith(
                  fontSize: 18,
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Amount',
                style: semibold.copyWith(fontSize: 18),
              ),
              Text(
                'Instanly add the nominal',
                style: regular.copyWith(
                  fontSize: 12,
                  color: grey,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.85),
            child: GestureDetector(
              onTap: () {
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: ButtonWidgets(label: 'Continue'),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ButtonWidgets extends StatelessWidget {
  final String? label;
  const ButtonWidgets({super.key, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 200,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: purple,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        '$label',
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600,color: Colors.white),
      ),
    );
  }
}
