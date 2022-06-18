// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';

// class Page1 extends StatefulWidget {
//   const Page1({Key? key}) : super(key: key);

//   @override
//   _Page1State createState() => _Page1State();
// }

// class _Page1State extends State<Page1> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: Column(children: [
//         Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(Icons.arrow_back_ios),

//             // onPressed: (){},
//           ),
//           const Text('Checkout Process'),

//           Image.asset('lib/hart/images/Ellipse2.png')
//           // Image.asset('assets/images/bottomnavbar/Ellipse2.png')
//         ]),
//         Container(
//           height: 172.05,
//           width: 362.35,
//           child: Column(
//             children: [
//               Container(
//                 height: 116,
//                 width: 360,
//                 child: Row(children: [
//                   Image.asset('lib/hart/images/Rectangle1.png'),
//                   // ignore: prefer_const_literals_to_create_immutables
//                   Column(children: [
//                     Text('Chicken Pizza'),
//                     Row(
//                       children: [
//                         Text('Cheese, canned black beans'),
//                         Image.asset('lib/hart/images/vector2.png'),
//                       ],
//                     )
//                   ])
//                 ]),
//               ),
//               Container(
//                 child: Row(children: [
//                   Container(
//                     height: 21,
//                     width: 20,
//                     child: Image.asset('lib/hart/images/vector1.png'),
//                     // Image.asset('assets/images/bottomnavbar/vector1.png'),
//                     //  assets\images\bottomnavbar\vector1.png
//                     //  assets\images\bottomnavbar\Vector(3).png
//                   ),
//                   Spacer(),
//                   Container(
//                     height: 35,
//                     width: 108,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(8),
//                       border:
//                           Border.all(width: 1, color: const Color(0xFFB80F0A)),
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         IconButton(
//                             onPressed: () {},
//                             color: const Color(0xFFB80F0A),
//                             icon: const Icon(Icons.remove)),
//                         Text("02",
//                             style: TextStyle(
//                               color: const Color(0xFFB80F0A),
//                             )),
//                         IconButton(
//                             color: const Color(0xFFB80F0A),
//                             onPressed: () {},
//                             icon: const Icon(Icons.add)),
//                       ],
//                     ),
//                   )
//                 ]),
//               )
//             ],
//           ),
//         ),
//         SizedBox(height: 20),
//         Container(
//           width: 362,
//           height: 147,
//           child: Column(children: [
//             Row(
//               // ignore: prefer_const_literals_to_create_immutables
//               children: [
//                 const Text('Zwischensumme'),
//                 Spacer(),
//                 const Text('28.00\$')
//               ],
//             ),
//             Row(
//               // ignore: prefer_const_literals_to_create_immutables
//               children: [
//                 const Text('Lieferkosten'),
//                 Spacer(),
//                 const Text('3.00\$')
//               ],
//             ),
//             const Divider(
//               height: 2,
//             ),
//             Row(
//               // ignore: prefer_const_literals_to_create_immutables
//               children: [
//                 const Text(
//                   'Gesamt',
//                   style: TextStyle(
//                     color: Color(0XFFE14942),
//                     fontWeight: FontWeight.w600,
//                     fontSize: 18.0,
//                   ),
//                 ),
//                 Spacer(),
//                 const Text(
//                   '31.00\$',
//                   style: TextStyle(
//                     color: Color(0XFFE14942),
//                     fontWeight: FontWeight.w600,
//                     fontSize: 18.0,
//                   ),
//                 ),
//               ],
//             )
//           ]),
//         ),
//         ClipRRect(
//           borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(13.0), topRight: Radius.circular(13.0)),
//           child: Container(
//             height: 76,
//             width: 375,
//             color: Color(0XFFE14942),
//             child: Row(children: [
//               const Text('Checkout'),
//               const Spacer(),
//               Column(
//                 // ignore: prefer_const_literals_to_create_immutables
//                 children: [
//                   // ignore: prefer_const_constructors
//                   Text(
//                     'Total',
//                   ),
//                   const Text(
//                     '\$28.00',
//                   ),
//                 ],
//               )
//             ]),
//           ),
//         )
//       ]),
//     ));
//   }
// }
