import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:salhurry/Main/screenmain.dart';
import 'package:salhurry/presentation/home/home.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: BottomCurvedClipper(),
            child: Container(
              height: height * .6,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 1, 0, 70),
              ),
            ),
          ),
          Positioned(
              left: 20,
              top: 40,
              child: Container(
                decoration: const BoxDecoration(
                    image:  DecorationImage(
                        image: AssetImage("assets/tplogofull.png"))),
                width: 125,
                height: 40,
              )),
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: const [
              OnboardingPage(
                title: 'Welcome',
                description: 'This is the first page of the onboarding screen.',
                image: Icons.looks_one,
              ),
              OnboardingPage(
                title: 'Discover',
                description:
                    'This is the second page of the onboarding screen.',
                image: Icons.looks_two,
              ),
              OnboardingPage(
                title: 'Get Started',
                description: 'This is the third page of the onboarding screen.',
                image: Icons.looks_3,
              ),
            ],
          ),
          if (_currentPage == 2)
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to the main screen or perform any action
                    newMethod();
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => ScreenMain(),));
                  },
                  child: const Text('Get Started'),
                ),
              ),
            ),
          Positioned(
            bottom: 100,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) => buildDot(index, context)),
            ),
          ),
        ],
      ),
    );
  }

  void newMethod() => log("Get Started Pressed");

  Widget buildDot(int index, BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentPage == index ? Colors.blue : Colors.grey,
      ),
    );
  }
}

class BottomCurvedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 130); // Start from bottom left
    path.quadraticBezierTo(size.width / 2, size.height, size.width,
        size.height - 130); // Smooth curve
    path.lineTo(size.width, 0); // Top right
    path.close(); // Top left
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; // No need to reclip as the shape doesn't change dynamically
  }
}

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;
  final IconData image;

  const OnboardingPage({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            width: 150,
            color: Colors.red,
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            description,
            style: const TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
