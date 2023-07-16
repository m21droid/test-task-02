import 'package:flora/widgets/picture.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final GestureTapCallback? onTap;

  const Button({Key? key, required this.text, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            width: 180,
            height: 48,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 83, 83, 138),
                borderRadius: BorderRadius.all(Radius.circular(24))),
            child: Row(children: [
              Expanded(
                  child: Text(text,
                      textAlign: TextAlign.center,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 20))),
              const SizedBox(width: 16),
              const Picture(name: 'arrow_2')
            ])));
  }
}
