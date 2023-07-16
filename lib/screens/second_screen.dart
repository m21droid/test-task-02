import 'package:flora/bloc/screen_bloc.dart';
import 'package:flora/bloc/screen_event.dart';
import 'package:flora/screens/base_screen.dart';
import 'package:flora/widgets/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const firstYear = 1900;
    final years = List.generate(
        DateTime.now().year - firstYear + 1, (index) => 1900 + index);
    int currentIndex = years.length - 16;

    return BaseScreen(
        background: 'background_2',
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Log in your year of birth',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 300,
                  height: 240,
                  child: CupertinoPicker(
                      itemExtent: 60,
                      scrollController: FixedExtentScrollController(
                          initialItem: currentIndex),
                      onSelectedItemChanged: (value) {
                        currentIndex = value;
                      },
                      children: List<Widget>.generate(
                          years.length,
                          (index) => Center(
                              child: Text(years[index].toString(),
                                  style: const TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold))))),
                ),
                Container(),
                Button(
                  text: 'Next',
                  onTap: () {
                    BlocProvider.of<ScreenBloc>(context)
                        .add(ButtonScreenEvent(years[currentIndex]));
                  },
                ),
              ]),
        ));
  }
}
