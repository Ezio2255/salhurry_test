import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salhurry/utilities/constants/const.dart';

class WidgetJobDetails extends StatelessWidget {
  const WidgetJobDetails({
    super.key,
    required this.documentSnapshots,
  });
  final String documentSnapshots; // DocumentSnapshot for this tile

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Job Description",
            style: GoogleFonts.inter(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          khbox10,
          StreamBuilder(
              stream: null,
              builder: (context, snapshot) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    "jobDetails",
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      wordSpacing: 2,
                      color: Colors.black.withOpacity(.8),
                    ),
                    textAlign: TextAlign.start,
                  ),
                );
              }),
          khbox10,
          Text(
            "Requirement",
            style: GoogleFonts.inter(
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
          ),
          khbox10,
          ListView.builder(
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.fiber_manual_record, size: 10),
                        const SizedBox(
                            width: 10), // Add some space between icon and text
                        Expanded(
                          child: Text(
                            "requirements",
                            style: GoogleFonts.inter(
                              color: const Color.fromARGB(255, 89, 6, 6),
                            ),
                          ),
                        ),
                      ],
                    ),
                    khbox15,
                  ],
                ),
              );
            },
          ),
          khbox8,
        ],
      ),
    );
  }
}
