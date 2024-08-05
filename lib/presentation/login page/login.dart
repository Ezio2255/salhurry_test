import 'package:flutter/material.dart';
import 'package:salhurry/presentation/create%20account/create_acc.dart';
import 'package:salhurry/presentation/create%20account/widgets/bottom_row.dart';
import 'package:salhurry/presentation/create%20account/widgets/common_top.dart';
import 'package:salhurry/utilities/constants/const.dart';
import 'package:salhurry/utilities/login%20or%20register%20common/textfield.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*divided portions into sub widgets
            LoginTopWidget is a top widget which is  the logo portion
            */
            const Assws().sa(height, width),
            SizedBox(
              height: height * .03,
            ),
            // textfields
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  // look at signInOrup what is passing , by that login or create account.
                  //both login or create account's button is same based on the argument passed it will
                  TextfieldWidget(
                    height: height,
                    hintTextEmail: "      Enter your email ",
                    hintTextPass: "      Enter your password ",
                    signInOrup: 'Login',
                    buttonText: 'Login',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * .034,
            ),

            SizedBox(
              height: height * .02,
            ),
            BottomRowWidget(
              width: width,
              leading: "Don't have an account?",
              tail: "Create",
              Screen: const ScreenCreateAccount(),
            ),
            khbox20,
            const SizedBox(width: double.infinity,
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Or login with"),
                  khbox20,
                  Icon(Icons.web)
                ],
              ),
            )
          ],
        ),
      )),
    );
  }

  
}
class Assws extends StatelessWidget {
  const Assws({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
  LoginTopWidget sa(double height, double width) {
    return LoginTopWidget(
            height: height,
            width: width,
            getText: "Login",
          );
  }
}