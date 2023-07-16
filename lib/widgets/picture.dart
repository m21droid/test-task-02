import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Picture extends StatelessWidget {
  final String name;
  final double size;

  const Picture({Key? key, required this.name, this.size = 32})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('assets/images/$name.svg',
        width: size, height: size);
  }
}
