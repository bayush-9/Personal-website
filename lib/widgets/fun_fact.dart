import 'package:flutter/material.dart';

class FunFact extends StatelessWidget {
  const FunFact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text("Funfact!"),
          Text("This website is made completely with flutter."),
        ],
      ),
    );
  }
}
