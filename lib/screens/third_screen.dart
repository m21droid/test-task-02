import 'package:flora/models/data.dart';
import 'package:flora/pages/test_page.dart';
import 'package:flora/screens/base_screen.dart';
import 'package:flora/widgets/button.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  final Data data;

  const ThirdScreen({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        background: 'background_3',
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text('Your data:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 24),
            Text('State: ${data.text}', style: const TextStyle(fontSize: 22)),
            Text('Year of birth: ${data.year}',
                style: const TextStyle(fontSize: 22)),
            const SizedBox(height: 48),
            Button(
                text: 'Finish',
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(TestPage.routeName);
                })
          ]),
        ));
  }
}
