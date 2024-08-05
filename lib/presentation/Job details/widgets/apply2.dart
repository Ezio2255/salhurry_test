// import 'package:flutter/material.dart';
// import 'package:giffy_dialog/giffy_dialog.dart';

// class WidgetApplyButton extends StatefulWidget {
//   const WidgetApplyButton({
//     Key? key,
//     required this.width,
//     required this.height,
//     required this.documentSnapshots,
//   }) : super(key: key);

//   final double width;
//   final double height;
//   final String documentSnapshots;

//   @override
//   WidgetApplyButtonState createState() => WidgetApplyButtonState();
// }

// class WidgetApplyButtonState extends State<WidgetApplyButton> {
//   bool isLoading = false;
//   bool oppoisloading = false;
//   bool isApplied = false;
//   Key loadingKey = UniqueKey();

//   @override
//   void initState() {
//     super.initState();
//     // Initialize isApplied from local storage or any other local method if needed
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isApplied
//         ? Container()
//         : Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: InkWell(
//               onTap: () {
//                 dialogue(context);
//               },
//               child: Container(
//                 width: widget.width * 1,
//                 height: widget.height * 0.05,
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 66, 32, 178),
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: const Center(
//                   child: Text(
//                     "Apply Now",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//           );
//   }

//   void dialogue(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return StatefulBuilder(
//           builder: (context, setState) {
//             return GiffyDialog.image(
//               isLoading
//                   ? Image.asset(
//                       "assets/images/loading.gif",
//                       key: loadingKey,
//                       height: 200,
//                       fit: BoxFit.cover,
//                     )
//                   : oppoisloading
//                       ? Image.asset(
//                           "assets/images/done.gif",
//                           height: 200,
//                           fit: BoxFit.cover,
//                         )
//                       : Image.network(
//                           "https://i.pinimg.com/originals/8a/2e/4c/8a2e4c79a1b9c983dc6bf8d6cbada43a.gif",
//                           height: 200,
//                           fit: BoxFit.cover,
//                         ),
//               title: const Text(
//                 '\nCONFIRMATION!',
//                 textAlign: TextAlign.center,
//               ),
//               content: isLoading
//                   ? const Text(
//                       'working on it...',
//                       textAlign: TextAlign.center,
//                     )
//                   : oppoisloading
//                       ? const Text(
//                           'Completed!',
//                           textAlign: TextAlign.center,
//                         )
//                       : const Text(
//                           'Are you sure you want to apply for this job?',
//                           textAlign: TextAlign.center,
//                         ),
//               actions: isLoading
//                   ? []
//                   : oppoisloading
//                       ? [
//                           TextButton(
//                             onPressed: () => Navigator.pop(context, 'OK'),
//                             child: const Text('OKey'),
//                           ),
//                         ]
//                       : [
//                           TextButton(
//                             onPressed: () => Navigator.pop(context, 'CANCEL'),
//                             child: const Text(
//                               'CANCEL',
//                               style: TextStyle(
//                                   color: Color.fromARGB(255, 132, 18, 9)),
//                             ),
//                           ),
//                           TextButton(
//                             onPressed: () {
//                               setState(() {
//                                 isLoading = true;
//                                 oppoisloading = isLoading;
//                               });

//                               Future.delayed(const Duration(seconds: 3), () {
//                                 setState(() {
//                                   isLoading = false;
//                                   isApplied = true;
//                                 });
//                                 Navigator.pop(context, 'OK');
//                               });
//                             },
//                             child: Container(
//                               width: 60,
//                               height: 40,
//                               decoration: BoxDecoration(
//                                 color: const Color.fromARGB(79, 15, 169, 35),
//                                 borderRadius: BorderRadius.circular(20),
//                               ),
//                               child: const Center(
//                                 child: Text(
//                                   'OK',
//                                   style: TextStyle(color: Colors.black),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//               entryAnimation: EntryAnimation.bottom,
//               giffyPadding: const EdgeInsets.all(0),
//             );
//           },
//         );
//       },
//     );
//   }
// }
