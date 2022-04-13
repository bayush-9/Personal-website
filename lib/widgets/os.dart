import 'package:flutter/material.dart';
import 'dart:math' as math;

class Group2Widget extends StatefulWidget {
  const Group2Widget({Key? key}) : super(key: key);

  @override
  State<Group2Widget> createState() => _Group2WidgetState();
}

class _Group2WidgetState extends State<Group2Widget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 9),
    );
    _animationController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Widget positionWidget({
    required double left,
    required double top,
    required double width,
    required double height,
    required String imagePath,
  }) {
    return Positioned(
      top: top,
      left: left,
      child: AnimatedBuilder(
        animation: _animationController.view,
        builder: (context, child) {
          return Transform.rotate(
            angle: _animationController.value * 2 * math.pi,
            child: child,
          );
        },
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/' + imagePath),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      child: Stack(
        children: <Widget>[
          positionWidget(
            top: 40,
            left: 230,
            width: 148.82745361328125,
            height: 147.93898010253906,
            imagePath: 'flutter_intro-modified.png',
          ),
          positionWidget(
            top: 200,
            left: 50,
            width: 100.82745361328125,
            height: 100.93898010253906,
            imagePath: 'download.png',
          ),
          positionWidget(
            top: 300,
            left: 350.7360534667969,
            width: 201,
            height: 143,
            imagePath: 'Androidlogo201420191.png',
          ),
          Positioned(
            top: 20.44536209106445,
            left: 266.7360534667969,
            child: SizedBox(
              width: 201,
              height: 143,
              child: Stack(
                children: const <Widget>[],
              ),
            ),
          ),
          positionWidget(
              top: 400,
              left: 27.534902572631836,
              width: 200.97190856933594,
              height: 200.84925842285156,
              imagePath: 'fireblack.jpg'),
          positionWidget(
              top: 500.07244873046875,
              left: 350.99998474121094,
              width: 141,
              height: 126,
              imagePath: 'Ce5e0bb316b94d889bca7d237fe725a8cover1-modified.png'),
        ],
      ),
    );
  }
}
