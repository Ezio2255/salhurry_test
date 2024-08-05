import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:salhurry/Main/screenmain.dart';

class ScreenOTP extends StatelessWidget {
  const ScreenOTP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 1),
              // Logo
              Container(
                height: 70,
                width: 300,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/tplogofull.png",
                        ),
                        fit: BoxFit.cover)),
              ),
              const Spacer(),
              const SizedBox(height: 20),
              // OTP Instructions
              Text(
                'We sent an OTP Verification to your mobile number\nthis code will expire in',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                    fontSize: 14, color: const Color.fromARGB(202, 0, 0, 0)),
              ),
              const SizedBox(height: 5),
              // Timer
              Text(
                '1:58',
                style: GoogleFonts.inter(
                    fontSize: 14, color: const Color.fromARGB(202, 0, 0, 0)),
              ),
              const SizedBox(height: 50),
              PinCodeTextField(
                appContext: context,
                length: 4,
                onChanged: (value) {},
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.white,
                  inactiveFillColor: Colors.white,
                  selectedFillColor: Colors.white,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.number,
                animationType: AnimationType.fade,
                textStyle: GoogleFonts.inter(color: Colors.black),
                enableActiveFill: true,
              ),
              const SizedBox(height: 20),
              // Submit Button
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => ScreenMain(),));

                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 1, 0, 70),
                    ),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.symmetric(
                            horizontal: 100, vertical: 15)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(212, 255, 255, 255)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Resend Code
              Text.rich(
                TextSpan(
                  text: "Didn't get code? ",
                  style: GoogleFonts.inter(
                      fontSize: 14, color: const Color.fromARGB(202, 0, 0, 0)),
                  children: [
                    TextSpan(
                      text: 'Re-send it',
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        color: const Color.fromARGB(255, 1, 0, 70),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          //typ
                        },
                    ),
                  ],
                ),
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
