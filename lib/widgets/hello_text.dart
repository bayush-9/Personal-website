import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HelloText extends StatelessWidget {
  const HelloText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isWebMobile = kIsWeb &&
        (defaultTargetPlatform == TargetPlatform.iOS ||
            defaultTargetPlatform == TargetPlatform.android);
    return SizedBox(
      height: 310,
      // color: Colors.green,
      child: Stack(
        children: [
          const Positioned(
            top: 100,
            child: Text(
              "Hel",
              style: TextStyle(
                  color: const Color.fromARGB(255, 233, 135, 135),
                  fontSize: 115),
            ),
          ),
          const Positioned(
            top: 100,
            left: 155,
            child: Text(
              "10.",
              style: TextStyle(
                  color: const Color.fromARGB(255, 255, 217, 0), fontSize: 115),
            ),
          ),
          Positioned(
            top: isWebMobile ? 200 : 100,
            left: isWebMobile ? 0 : 300,
            child: const Text(
              "World;",
              style: TextStyle(
                  color: Color.fromARGB(93, 44, 127, 21), fontSize: 115),
            ),
          ),
        ],
      ),
    );
  }
}
