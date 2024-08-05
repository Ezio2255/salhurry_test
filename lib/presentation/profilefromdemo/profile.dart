import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salhurry/presentation/settings/edit_screen/edit_screen.dart';
import 'package:salhurry/presentation/settings/settings/settings.dart';
import 'package:salhurry/utilities/constants/const.dart';

class ScreenProfilee extends StatelessWidget {
  const ScreenProfilee({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;

    int tileCount = 5;
    int worktimeCount = 1;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              clipBehavior: Clip.none,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    bottom: height * .16 - height * .07,
                  ),
                  child: Container(
                    color: Colors.grey,
                    height: height * .19,
                    width: double.infinity,
                    child: Image.network(
                      "assets/bgbody.jpg",
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const SizedBox(),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(
                          Icons.settings, color: Colors.black,
                          //  color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ScreenSettings(),
                          ));
                        },
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: height * .16 - height * .07,
                  child: CircleAvatar(
                    radius: height * .075,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: height * .07,
                      backgroundImage: const NetworkImage("assets/avatar.png"),
                    ),
                  ),
                )
              ],
            ),
            Center(
              child: Text(
                "Kasi",
                style: GoogleFonts.sanchez(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            khbox10,
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About",
                          style: GoogleFonts.inter(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        khbox5,
                        const Text(
                            "Versatile professional seeking part-time opportunities. Proficient in various domains, with a keen eye for detail and efficiency. "),
                        khbox20,
                        Row(
                          children: [
                            const SizedBox(),
                            const Spacer(),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const EditAccountScreen(),
                                  ),
                                );
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  const Color.fromARGB(255, 1, 0, 70),
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                              ),
                              child: const Column(
                                children: [
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    '   Edit profile   ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color:
                                            Color.fromARGB(212, 255, 255, 255)),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  khbox20,
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.green.withOpacity(0.2),
                    child: const Text(
                      'Looking for work as : Data analyst, Datascientist, Tester',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Top Skills',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  khbox5,
                  Wrap(
                    spacing: 10.0, // spacing between widgets
                    runSpacing: 10.0, // spacing between lines
                    children: List.generate(
                      6 + 1,
                      (index) {
                        if (index == tileCount + 1) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Adjust the radius as needed
                              border: Border.all(
                                  color: Colors.grey,
                                  width: 1.0), // Border properties
                              color: Colors.red, // Red color for the last tile
                            ),
                            padding: const EdgeInsets.all(
                                8.0), // Padding inside the container
                            child: const Text("buttton",
                                style: TextStyle(
                                    color: Colors.white)), // Text color
                          );
                        }
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                10.0), // Adjust the radius as needed
                            border: Border.all(
                                color: Colors.grey,
                                width: 1.0), // Border properties
                          ),
                          padding: const EdgeInsets.all(
                              8.0), // Padding inside the container
                          child: const Text("sssasata"),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Education :',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      khbox5,
                      Text(
                        'Heera college of engineering kalliiyod B-tech computer science',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  InkWell(
                    onTap: () {
                      // Handle website link click
                    },
                    child: const Row(
                      children: [
                        Text(
                          'www.tomysportfolio.in',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                        Icon(Icons.link)
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Interested work time',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  khbox10,
                  Wrap(
                    spacing: 10.0, // spacing between widgets
                    runSpacing: 10.0, // spacing between lines
                    children: List.generate(
                      2 + 1,
                      (index) {
                        if (index == worktimeCount + 1) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Adjust the radius as needed
                              border: Border.all(
                                  color: Colors.grey,
                                  width: 1.0), // Border properties
                              color: Colors.red, // Red color for the last tile
                            ),
                            padding: const EdgeInsets.all(
                                8.0), // Padding inside the container
                            child: const Text("btnwt",
                                style: TextStyle(
                                    color: Colors.white)), // Text color
                          );
                        }
                        return Container(
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(26, 158, 158, 158)),
                          padding: const EdgeInsets.all(
                              8.0), // Padding inside the container
                          child: const Text(
                            "intrst",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetSkillContainer extends StatelessWidget {
  const WidgetSkillContainer({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Center(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
        ),
        kwbox10,
      ],
    );
  }
}
