import 'package:flora/bloc/screen_event.dart';
import 'package:flora/bloc/screen_state.dart';
import 'package:flora/models/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenBloc extends Bloc<ScreenEvent, ScreenState> {
  ScreenBloc() : super(FirstScreenState(Data())) {
    on<FirstTileScreenEvent>((event, emit) async {
      final data = state.data;
      data.text = event.text;
      emit(SecondScreenState(data));
    });
    on<SecondTileScreenEvent>((event, emit) async {
      final data = state.data;
      data.text = event.text;
      emit(SecondScreenState(data));
    });
    on<ButtonScreenEvent>((event, emit) async {
      final data = state.data;
      data.year = event.year;
      emit(ThirdScreenState(data));
    });
  }
}
