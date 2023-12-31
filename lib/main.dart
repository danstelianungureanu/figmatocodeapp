// ignore_for_file: camel_case_types

import 'package:figmatocodeapp/pages/pagina_start.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(46, 18, 32, 47),
      ),
      home:
          // Scaffold(
          //   body:
          //   ListView(children: const [
          const paginaStart(),
      // secondPage(),
      // ]),
      // ),
    );
  }
}

// class paginaStart extends StatelessWidget {
//   const paginaStart({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               width: 390,
//               height: 768,
//               padding: const EdgeInsets.only(
//                 top: 298,
//                 left: 92,
//                 right: 93,
//                 bottom: 37,
//               ),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Container(
//                     width: 180,
//                     height: 171,
//                     clipBehavior: Clip.antiAlias,
//                     decoration: const BoxDecoration(),
//                     child: const Column(
//                       mainAxisSize: MainAxisSize.min,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Center(
//                           child: SizedBox(
//                             width: 80,
//                             height: 70,
//                             child: Stack(children: [
//                               Center(
//                                 child: SquareTile(
//                                   imagePath: 'lib/images/logo.png',
//                                 ),
//                               )
//                             ]),
//                           ),
//                         ),
//                         SizedBox(
//                           // width: 78.69,
//                           // height: 88.53,
//                           child: Padding(
//                             padding: EdgeInsets.only(bottom: 0),
//                             child: Stack(children: [
//                               Text(
//                                 'VERUM',
//                                 style: TextStyle(
//                                   fontSize: 50,
//                                   fontFamily: 'Open Sans',
//                                   fontWeight: FontWeight.w700,
//                                 ),
//                               )
//                             ]),
//                           ),
//                         ),
//                         SizedBox(
//                           // width: 171,
//                           // height: 20,
//                           child: Padding(
//                             padding: EdgeInsets.only(top: 0),
//                             child: Center(
//                               child: Text(
//                                 'AGRO TRADING',
//                                 style: TextStyle(
//                                   color: Color(0xFF3CBEAA),
//                                   fontSize: 22.15,
//                                   fontFamily: 'Open Sans',
//                                   fontWeight: FontWeight.w700,
//                                   height: 0,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 212),
//                   const SizedBox(
//                     width: double.infinity,
//                     child: Center(
//                       child: Column(
//                         mainAxisSize: MainAxisSize.min,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text(
//                             'Cultivăm Prețuri Corecte',
//                             style: TextStyle(
//                               color: Color(0xFFC7DAE5),
//                               fontSize: 18,
//                               fontFamily: 'Karla',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                           ),
//                           SizedBox(height: 8),
//                           Text(
//                             'în Mediul Rural',
//                             style: TextStyle(
//                               color: Color(0xFFC7DAE5),
//                               fontSize: 18,
//                               fontFamily: 'Karla',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
