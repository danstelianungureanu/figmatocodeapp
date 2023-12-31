import 'package:figmatocodeapp/components/square_tile.dart';
import 'package:flutter/material.dart';

class LogoAndName extends StatelessWidget {
  const LogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      // width: 326,
      // height: 250,
      // padding: const EdgeInsets.only(left: 20, right: 20),
      decoration: const ShapeDecoration(
        // color: Color.fromRGBO(32, 55, 69, 0.1),
        shape: RoundedRectangleBorder(
            // borderRadius: BorderRadius.circular(20),
            ),
      ),
      child: const SizedBox(
        height: 220,
        child: SquareTile(
          imagePath: 'lib/images/verum_LOGO.png',
          // children: [
          //   Column(
          //     mainAxisSize: MainAxisSize.min,
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //   ),
          // ],
        ),
      ),
    );
  }
}
