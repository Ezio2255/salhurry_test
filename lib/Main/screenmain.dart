import 'package:flutter/material.dart';
import 'package:salhurry/bottomNavBAr/bottom.dart';
import 'package:salhurry/presentation/Earnings/balance/balance_view.dart';
import 'package:salhurry/presentation/Search/search.dart';
import 'package:salhurry/presentation/home/home.dart';
import 'package:salhurry/presentation/profilefromdemo/profile.dart';

//This screen is main which is connects to the bottom nav bar (so it is necessery for this page)
class ScreenMain extends StatelessWidget {
  ScreenMain({super.key});
  final List screens = [
    const ScreenHome(showHorizontalListView: true,),
    const JobListingScreen(),
    const ScreenTransactionHistory(),
    const ScreenProfilee(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: values,
            //here value listeneble builder will increment or dec, based on the user click on the bottom nav bar
            builder: (context, int news, child) {
              return screens[news];
            }),
      ),
      bottomNavigationBar: const Bottom2nav(),
    );
  }
}
