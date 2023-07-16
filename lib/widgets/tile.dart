import 'package:flora/widgets/picture.dart';
import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final String text1;
  final String text2;
  final GestureTapCallback? onTap;

  const Tile({Key? key, required this.text1, required this.text2, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            height: 120,
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 239, 239),
                borderRadius: BorderRadius.all(Radius.circular(24))),
            child: Row(children: [
              Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Text(text1,
                        style: const TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold)),
                    Text(text2, style: const TextStyle(fontSize: 18))
                  ])),
              const SizedBox(width: 16),
              const Picture(name: 'arrow_1')
            ])));
  }
}
