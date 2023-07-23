import 'package:flora/bloc/screen_bloc.dart';
import 'package:flora/bloc/screen_state.dart';
import 'package:flora/screens/first_screen.dart';
import 'package:flora/screens/second_screen.dart';
import 'package:flora/screens/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  static const routeName = '/main';

  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScreenBloc, ScreenState>(builder: (context, state) {
      if (state is SecondScreenState) {
        return const SecondScreen();
      }
      if (state is ThirdScreenState) {
        return ThirdScreen(data: state.data);
      }
      return const FirstScreen();
    });
  }
}
