abstract class ScreenState {}

class FirstScreenState extends ScreenState {}

class SecondScreenState extends ScreenState {}

class ThirdScreenState extends ScreenState {
  final String text;
  final int year;

  ThirdScreenState(this.text, this.year);
}
