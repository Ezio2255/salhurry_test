
import 'package:flutter/material.dart';
import 'package:salhurry/presentation/settings/edit_screen/edit_screen.dart';
import 'package:salhurry/presentation/settings/settings/widgets/forward_button.dart';

class WidgetEditProfileTile extends StatelessWidget {
  const WidgetEditProfileTile({
    super.key,
  });
//account edit portion
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/avatar.png", width: 70, height: 70),
        const SizedBox(width: 20),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Uranus Code",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Youtube Channel",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            )
          ],
        ),
        const Spacer(),
        ForwardButton(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const EditAccountScreen(),
              ),
            );
          },
        )
      ],
    );
  }
}
