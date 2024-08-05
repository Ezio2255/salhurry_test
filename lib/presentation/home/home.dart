import 'package:flutter/material.dart';
import 'package:salhurry/presentation/home/widgets/activejoblist.dart';
import 'package:salhurry/presentation/home/widgets/bottom.dart';
import 'package:salhurry/presentation/home/widgets/top.dart';
import 'package:salhurry/presentation/home/widgets/topcompanieslist.dart';
import 'package:salhurry/presentation/home/widgets/topcompanyrow.dart';

class ScreenHome extends StatelessWidget {
  final bool showHorizontalListView;

  const ScreenHome({super.key, required this.showHorizontalListView});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    const String hinttext = "Search";

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            //top
            WidgetTopOFHome(height: height, width: width, hinttext: hinttext),
            const Divider(
              color: Color.fromARGB(11, 0, 0, 0),
              thickness: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //SizedBox(height: height * .01),
                  //upper row
                  if (showHorizontalListView)
                    const WidgetTopCompaniesRow(
                      leftportion: "Active Job", color: Color.fromARGB(255, 195, 34, 23),
                    ),
                  if (showHorizontalListView) SizedBox(height: height * .02),

                  // Conditionally render the first horizontal ListView
                  if (showHorizontalListView)
                    SizedBox(
                      width: double.infinity,
                      height: height * .2,
                      child: ListView.separated(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          //active job list row
                          return WidgetActiveJobList(
                              width: width,
                              height: height,
                              title: "title",
                              mnc: "mnc",
                              rating: "rating");
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 20,
                          );
                        },
                      ),
                    ),
                  SizedBox(height: height * .01),
                  const WidgetTopCompaniesRow(color: Colors.black,
                    leftportion: "Top companies",
                  ),
                  SizedBox(height: height * .02),

                  // Normal second horizontal ListView
                  SizedBox(
                    width: double.infinity,
                    height: height * .23,
                    child: ListView.separated(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        //top companies list row
                        return WidgetTopCompaniesTile(
                            width: width,
                            height: height,
                            title: "title",
                            mnc: "mnc",
                            rating: "rating");
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 20,
                        );
                      },
                    ),
                  ),
                  SizedBox(height: height * .01),
                  // Normal WidgetBottomOfHome
                  const WidgetBottomOfHome(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
