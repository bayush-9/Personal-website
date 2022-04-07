import 'package:flutter/material.dart';

class NameText extends StatelessWidget {
  const NameText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Stack(
        children: const [
          Positioned(
            child: Text(
              "I am",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255), fontSize: 128),
            ),
          ),
          Positioned(
            left: 290,
            child: Text(
              ";",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 0, 0), fontSize: 128),
            ),
          ),
          Positioned(
            top: 130,
            child: Text(
              "Ayush",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255), fontSize: 128),
            ),
          ),
        ],
      ),
    );
  }
}
