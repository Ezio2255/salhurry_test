import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salhurry/utilities/constants/const.dart';

class WidgetActiveJobList extends StatelessWidget {
  const WidgetActiveJobList({
    super.key,
    required this.width,
    required this.height,
    required this.title,
    required this.mnc,
    required this.rating,
  });

  final double width;
  final double height;
  final String title;
  final String mnc;
  final String rating;

  @override
  Widget build(BuildContext context) {
    //here title mnc rating these are based on the backend so do appropriately
    return Container(
      width: width * .7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color.fromARGB(15, 0, 0, 0), width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Decoration Ast ",
                  style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color:
                          const Color.fromARGB(255, 0, 0, 0).withOpacity(.8)),
                ),
                const Spacer(),
                const Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 241, 147, 5),
                  size: 10,
                ),
                Text(
                  " 3.9",
                  style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      color: Colors.black.withOpacity(.6)),
                ),
              ],
            ),
            Text(
              "needed ast for mrg wok",
              style: GoogleFonts.inter(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromARGB(255, 0, 0, 0).withOpacity(.6)),
            ),
            khbox5,
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: Color.fromARGB(255, 241, 147, 5),
                  size: 10,
                ),
                kwbox5,
                Text(
                  "Tvm,pkda,pin-5200",
                  style: GoogleFonts.inter(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromARGB(255, 1,0,70),
                  ),
                ),
              ],
            ),
            khbox5,
            //horizontal row
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 8),
              child: SizedBox(
                height: height * .03,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                            color: const Color.fromARGB(26, 8, 19, 29),
                            child: const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text("3k per week"),
                            )),
                        kwbox10,
                      ],
                    );
                  },
                ),
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  "10 min ago",
                  style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color:
                          const Color.fromARGB(255, 0, 0, 0).withOpacity(.6)),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.phone,color: Color.fromARGB(255, 53, 140, 56),),
                  onPressed: () {
                    // contact button action
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.location_on,color: Color.fromARGB(255, 6, 41, 70),),
                  onPressed: () {
                    // Location button action
                  },
                ),
                IconButton(
                  icon: const Text(
                    "Cancel",
                    style: TextStyle(color: Colors.red, fontSize: 10),
                  ),
                  onPressed: () {
                    // cancel button action
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
