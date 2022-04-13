import 'package:flutter/material.dart';

class AboutTile extends StatelessWidget {
  const AboutTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border:
            Border.all(width: 4, color: Colors.grey, style: BorderStyle.solid),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: const [
            SizedBox(
              width: 50,
            ),
            SizedBox(
              height: 300,
              width: 300,
              child: Image(
                image: AssetImage('assets/images/IMG_6013-modified.png'),
              ),
            ),
            SizedBox(
              width: 50,
            ),
            Expanded(
              child: Text(
                "Hi! And welcome to my e-Portfolio. My name is Ayush Anil Bharsakle.  I got fascinated with the world of tech from my childhood, having worked or at least dabbled in Mobile application development focusing on flutter SDK. ",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            SizedBox(
              width: 50,
            ),
          ],
        ),
      ),
    );
  }
}
