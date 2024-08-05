import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salhurry/presentation/home/widgets/bottomtile.dart';

class WidgetBottomOfHome extends StatelessWidget {
  const WidgetBottomOfHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TabBar(
            labelStyle: GoogleFonts.inter(
              fontWeight: FontWeight.w700,
            ),
            unselectedLabelStyle: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
            ),
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black38,
            tabs: const [
              Tab(text: 'New jobs'),
              Tab(text: 'Featured'),
              Tab(text: 'Recommended'),
            ],
          ),
          SizedBox(
            height: height*.5,
            child: TabBarView(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      //newjobs list view the below is the design of one list tile has a functionality in apply buttom
                      return WidgetBottomJobsTile(
                        width: width,
                        height: height,
                        title: "title",
                        rating: "rating",
                        t1: "t1",
                        posted: "posted",
                        loc: "loc",
                        t2: "t2",
                        t3: "t3",
                        slots: "slots",
                        documentSnapshots: "docID",
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 10,
                      );
                    },
                  ),
                ),
                //rest of list views
                ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('Featured Job ${index + 1}'),
                    );
                  },
                ),
                ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('Recommended Job ${index + 1}'),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
