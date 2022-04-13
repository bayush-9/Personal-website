import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);
  SnackBar customSnackbar(String what_copied) {
    return SnackBar(
      duration: const Duration(milliseconds: 700),
      content: Text(what_copied + 'Copied to clipboard!'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      // decoration: const BoxDecoration(color: Colors.green),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Email : bharsakleaa@gmail.com",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              IconButton(
                onPressed: () {
                  Clipboard.setData(
                      const ClipboardData(text: " bharsakleaa@gmail.com"));
                  ScaffoldMessenger.of(context)
                      .showSnackBar(customSnackbar("E-mail "));
                },
                icon: const Icon(
                  Icons.copy,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Phone: (+91)9422137209",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              IconButton(
                onPressed: () {
                  Clipboard.setData(
                      const ClipboardData(text: "(+91)9422137209"));
                  ScaffoldMessenger.of(context)
                      .showSnackBar(customSnackbar("Phone Number "));
                },
                icon: const Icon(
                  Icons.copy,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
