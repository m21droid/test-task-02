import 'package:flora/screens/base_screen.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  final String text;
  final int year;

  const ThirdScreen({Key? key, required this.text, required this.year})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        background: 'background_3',
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text('Your data:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 24),
            Text('State: $text', style: const TextStyle(fontSize: 22)),
            Text('Year of birth: $year', style: const TextStyle(fontSize: 22))
          ]),
        ));
  }
}
