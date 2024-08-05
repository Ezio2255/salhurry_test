import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salhurry/Main/screenmain.dart';

class TextfieldWidget extends StatefulWidget {
  const TextfieldWidget({
    Key? key,
    required this.height,
    required this.hintTextEmail,
    required this.hintTextPass,
    required this.signInOrup,
    required this.buttonText,
  }) : super(key: key);

  final double height;
  final String hintTextEmail;
  final String hintTextPass;
  final String signInOrup;
  final String buttonText;

  @override
  State<TextfieldWidget> createState() => _TextfieldWidgetState();
}

class _TextfieldWidgetState extends State<TextfieldWidget> {
  bool showSpinner = false;
  String email = '';
  String pass = '';

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 246, 246, 246),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.white)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                email = value;
              },
              decoration: InputDecoration(
                hintText: widget.hintTextEmail,
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        SizedBox(
          height: widget.height * .02,
        ),
        //password field
        Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 246, 246, 246),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.white)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: TextField(
              obscureText: true,
              onChanged: (value) {
                pass = value;
              },
              decoration: InputDecoration(
                hintText: widget.hintTextPass,
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        SizedBox(
          height: widget.height * .02,
        ),
        InkWell(
          onTap: () async {
            setState(() {
              showSpinner = true;
            });

            // Simple email and password validation
            if (email == 'a@gmail.com' && pass == '123456') {
              setState(() {
                showSpinner = false;
              });

              // Navigate to home page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ScreenMain()),
              );
            } else {
              setState(() {
                showSpinner = false;
              });

              // Show error message
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Invalid email or password')),
              );
            }
          },
          child: Container(
            height: widget.height * .055,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 66, 32, 178),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                widget.buttonText,
                style: GoogleFonts.roboto(
                    fontSize: width * .05,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
