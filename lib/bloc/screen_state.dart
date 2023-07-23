import 'package:flora/models/data.dart';

abstract class ScreenState {
  final Data data;

  ScreenState(this.data);
}

class FirstScreenState extends ScreenState {
  FirstScreenState(super.data);
}

class SecondScreenState extends ScreenState {
  SecondScreenState(super.data);
}

class ThirdScreenState extends ScreenState {
  ThirdScreenState(super.data);
}
