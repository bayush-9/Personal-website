import 'package:flutter/material.dart';

class HelloText extends StatelessWidget {
  const HelloText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      // color: Colors.green,
      child: Stack(
        children: const [
          Positioned(
            top: 100,
            child: Text(
              "Hel",
              style: TextStyle(
                  color: Color.fromARGB(255, 233, 135, 135), fontSize: 115),
            ),
          ),
          Positioned(
            top: 100,
            left: 155,
            child: Text(
              "10.",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 217, 0), fontSize: 115),
            ),
          ),
          Positioned(
            top: 100,
            left: 300,
            child: Text(
              "World;",
              style: TextStyle(
                  color: Color.fromARGB(180, 44, 127, 21), fontSize: 115),
            ),
          ),
        ],
      ),
    );
  }
}
