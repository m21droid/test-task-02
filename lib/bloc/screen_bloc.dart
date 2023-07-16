import 'package:flora/bloc/screen_event.dart';
import 'package:flora/bloc/screen_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenBloc extends Bloc<ScreenEvent, ScreenState> {
  String text = "";

  ScreenBloc() : super(FirstScreenState()) {
    on<FirstTileScreenEvent>((event, emit) async {
      text = event.text;
      emit(SecondScreenState());
    });
    on<SecondTileScreenEvent>((event, emit) async {
      text = event.text;
      emit(SecondScreenState());
    });
    on<ButtonScreenEvent>((event, emit) async {
      emit(ThirdScreenState(text, event.year));
    });
  }
}
