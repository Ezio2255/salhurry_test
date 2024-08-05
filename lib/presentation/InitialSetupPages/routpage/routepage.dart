import 'package:flutter/material.dart';
import 'package:salhurry/utilities/constants/const.dart';
import 'package:salhurry/utilities/constants/shared/theme.dart';

class ScreenRoute extends StatelessWidget {
  const ScreenRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
              const SizedBox(
                height: 75,
              ),
              Text(
                'Choose your profile style',
                style: regular.copyWith(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              khbox10,
              Text(
                'let'
                's get started with choosing your desired profile style,\nstudent and  employee',
                style: regular.copyWith(
                  fontSize: 10,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              khbox20,
              khbox30,
              button(const Color.fromARGB(255, 1, 0, 70),
                  const Color.fromARGB(200, 255, 255, 255), true, "Job Seeker"),
              khbox10,
              const Text("or"),
              khbox10,
              button(Colors.white, Colors.black, false, "employer"),
            ],
          ),
        ],
      )),
    );
  }

  ElevatedButton button(Color backgroundColor, Color foregroundColor,
      isTrueIncoming, String tileText) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
          foregroundColor: MaterialStateProperty.all<Color>(foregroundColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: const BorderSide(
                    width: .6,
                    color: Color.fromARGB(255, 1, 0, 70),
                  )))),
      child: SizedBox(
          width: 200,
          height: 20,
          child: Center(
              child: Text(
            tileText,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ))),
    );
  }
}
