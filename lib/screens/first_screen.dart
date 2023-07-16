import 'package:flora/bloc/screen_bloc.dart';
import 'package:flora/bloc/screen_event.dart';
import 'package:flora/screens/base_screen.dart';
import 'package:flora/widgets/tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ScreenBloc>(context);
    return BaseScreen(
        background: 'background_1',
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Tile(
              text1: 'Track my period',
              text2: 'contraception and wellbeing',
              onTap: () {
                bloc.add(FirstTileScreenEvent("Period"));
              }),
          const SizedBox(height: 24),
          Tile(
              text1: 'Get pregnant',
              text2: 'learn about reproductive health',
              onTap: () {
                bloc.add(SecondTileScreenEvent("Pregnancy"));
              })
        ]));
  }
}
