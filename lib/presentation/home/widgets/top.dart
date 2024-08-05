import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salhurry/presentation/Notifications/notification.dart';
import 'package:salhurry/utilities/constants/const.dart';

class WidgetTopOFHome extends StatelessWidget {
  const WidgetTopOFHome({
    super.key,
    required this.height,
    required this.width,
    required this.hinttext,
  });

  final double height;
  final double width;
  final String hinttext;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * .13,
      decoration: BoxDecoration(
        //color: const Color.fromARGB(255, 66, 32, 178),
        borderRadius: BorderRadius.circular(0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(),
            const Center(),
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/logoonly.png",
                          ),
                          fit: BoxFit.cover)),
                ),
                kwbox5,
                Text(
                  "Salhurry",
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: const Color.fromARGB(255, 173, 249, 79),
                  ),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ScreenNotification(),
                      ));
                    },
                    icon: const Icon(
                      Icons.notifications_on_outlined,
                      color: const Color.fromARGB(255, 1, 0, 70),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
