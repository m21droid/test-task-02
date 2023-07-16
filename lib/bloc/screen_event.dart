abstract class ScreenEvent {}

class FirstTileScreenEvent extends ScreenEvent {
  final String text;

  FirstTileScreenEvent(this.text);
}

class SecondTileScreenEvent extends ScreenEvent {
  final String text;

  SecondTileScreenEvent(this.text);
}

class ButtonScreenEvent extends ScreenEvent {
  final int year;

  ButtonScreenEvent(this.year);
}
