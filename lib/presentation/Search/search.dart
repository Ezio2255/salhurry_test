import 'package:flutter/material.dart';
import 'package:salhurry/presentation/home/widgets/topcompanyrow.dart';
import 'package:salhurry/utilities/constants/const.dart';

class JobListingScreen extends StatelessWidget {
  const JobListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;

    return Scaffold(
      // appBar: AppBar(
      //   leading: Row(
      //     children: [
      //       kwbox10,
      //       IconButton(
      //           onPressed: () {},
      //           icon: const Icon(
      //             Icons.arrow_back_ios,
      //             size: 30,
      //             color: Color.fromARGB(101, 0, 0, 0),
      //           )),
      //     ],
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            khbox30,
            khbox30,
            textfieldSearch(
              true,
              'Search',
              const Color.fromARGB(9, 0, 0, 0),
            ),
            khbox20,
            const Row(
              children: [Text("recent seaches ")],
            ),
            const HorizontalList(),
            khbox20,
            textfieldSearch(
              false,
              'Related keywords',
              const Color.fromARGB(4, 0, 0, 0),
            ),
            khbox20,
            textfieldSearch(
              false,
              'Location',
              const Color.fromARGB(4, 0, 0, 0),
            ),
            khbox10,
            Row(
              children: [
                const SizedBox(),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 1, 0, 70),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    '   search   ',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(212, 255, 255, 255)),
                  ),
                ),
              ],
            ),
            khbox20,
            const Divider(
              thickness: 5,
              color: Color.fromARGB(10, 0, 0, 0),
            ),
            const WidgetTopCompaniesRow(
                leftportion: "Top destinations", color: Colors.black),
            khbox10,
            const HorizontalTilesList(),
            khbox20,
            const Divider(
              thickness: 5,
              color: Color.fromARGB(10, 0, 0, 0),
            ),
            khbox20,
            const WidgetTopCompaniesRow(
                leftportion: "More suggestion", color: Colors.black),
            khbox10,
            const HorizontalTilesList(),

          ],
        ),
      ),
    );
  }

  TextField textfieldSearch(
    bool borders,
    String inputhint,
    Color colorofbox,
  ) {
    return TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: colorofbox,
          hintText: '  $inputhint',
          border: borders
              ? UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )
              : InputBorder.none),
    );
  }
}

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50, // Adjust the height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20, // Number of items
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.green,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'hasai',
                    style: TextStyle(
                      color: Colors.white,
                      // fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class HorizontalTilesList extends StatelessWidget {
  const HorizontalTilesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(10, (index) {
          return Tile(index: index);
        }),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  final int index;

  const Tile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            color: Colors.black,
          ),
          const SizedBox(height: 10),
          const Text(
            'Text 1',
            style: TextStyle(color: Colors.black),
          ),
          const SizedBox(height: 5),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 12,
              ),
              Text(
                ' Text 2 |',
                style: TextStyle(color: Colors.black),
              ),
              Expanded(
                child: Text(
                  'reviesssw',
                  style: TextStyle(color: Colors.black),
                ),
              ),

            ],
          ),
          khbox30,
          khbox10,
        ],
      ),
    );
  }
}
