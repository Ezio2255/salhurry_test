import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salhurry/presentation/Job%20details/widgets/jobdetails.dart';
import 'package:salhurry/presentation/Job%20details/widgets/top.dart';
import 'package:salhurry/presentation/Job%20details/widgets/toprowhighlight.dart';
import 'package:salhurry/utilities/constants/const.dart';

class ScreenJobDetails extends StatelessWidget {
  const ScreenJobDetails({
    Key? key,
    required this.documentSnapshots,
    required this.loc,
    required this.title,
  }) : super(key: key);

  final String documentSnapshots;
  final String loc;
  final String title;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              WidgetTop(
                height: height,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      loc,
                      style: GoogleFonts.inter(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 20),
                    WidgetHighlightRow(
                      documentSnapshot: documentSnapshots,
                      width: width,
                      height: height,
                    ),
                    const SizedBox(height: 20),
                    WidgetJobDetails(
                      documentSnapshots: documentSnapshots,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
