import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BaseScreen extends StatelessWidget {
  final String background;
  final Widget child;

  const BaseScreen({Key? key, required this.background, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SvgPicture.asset('assets/images/$background.svg', fit: BoxFit.fill),
        Padding(padding: const EdgeInsets.all(16), child: child)
      ]),
    );
  }
}
