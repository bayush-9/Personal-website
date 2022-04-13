import 'package:flutter/material.dart';

class AboutTile extends StatelessWidget {
  const AboutTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 1300,
          child: Card(
            shadowColor: Colors.blue,
            color: Colors.grey[900],
            elevation: 50,
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
                      "Hi! And welcome to my e-Portfolio. My name is Ayush Anil Bharsakle. I am a Flutter developer, having worked or at least dabbled in Mobile application development focusing on Flutter SDK. ",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
