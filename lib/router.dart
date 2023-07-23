import 'package:flora/pages/main_page.dart';
import 'package:flora/pages/test_page.dart';
import 'package:flutter/cupertino.dart';

Route router(RouteSettings settings) {
  switch (settings.name) {
    case TestPage.routeName:
      return CupertinoPageRoute(builder: (_) => const TestPage());
    default:
      return CupertinoPageRoute(builder: (_) => const MainPage());
  }
}
