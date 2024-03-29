import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:html' as http;

class Details extends StatelessWidget {
  SnackBar customSnackbar(String whatCopied) {
    return SnackBar(
      duration: const Duration(milliseconds: 700),
      content: Text(whatCopied + 'Copied to clipboard!'),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isWebMobile = kIsWeb &&
        (defaultTargetPlatform == TargetPlatform.iOS ||
            defaultTargetPlatform == TargetPlatform.android);
    final list = [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "bharsakleaa@gmail.com",
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
              Clipboard.setData(const ClipboardData(text: "(+91)9422137209"));
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
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              http.window.open(
                  'https://drive.google.com/file/d/1CLv0aRJgwh1tJ_WX-axkCn508Xqp_H5m/view?usp=sharing',
                  '_blank');
            },
            child: const Text(
              "Resume",
              style: TextStyle(
                  color: Color.fromARGB(255, 149, 194, 230),
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          ),
          IconButton(
            onPressed: () {
              http.window.open(
                  'https://drive.google.com/file/d/1CLv0aRJgwh1tJ_WX-axkCn508Xqp_H5m/view?usp=sharing',
                  '_blank');
            },
            icon: const Icon(
              Icons.document_scanner,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    ];

    return Container(
      height: 200,
      child: (isWebMobile
          ? Column(
              children: list,
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: list,
            )),
    );
  }
}
