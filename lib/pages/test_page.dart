import 'package:flora/pages/main_page.dart';
import 'package:flora/widgets/button.dart';
import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  static const routeName = '/test';

  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Button(
            text: 'Return',
            onTap: () {
              Navigator.of(context).pushReplacementNamed(MainPage.routeName);
            }),
      ),
    );
  }
}
