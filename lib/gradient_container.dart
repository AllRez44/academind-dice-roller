import 'package:flutter/material.dart';
import 'package:second_app/styled_text.dart';
import 'package:second_app/dice_roller.dart';

const Alignment endAlignment = Alignment.bottomRight;
const Alignment startAlignment = Alignment.topLeft;
const Color defaultMainColor = Colors.white;
const Color defaultSecondaryColor = Colors.blueGrey;
const Color defaultTextColor = Colors.white;
// const List<Color> defaultColors = [Colors.white, Colors.blueGrey];

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    this.title = '',
    // this.colors = defaulColors,
    this.mainColor = defaultMainColor,
    this.secondaryColor = defaultSecondaryColor,
    this.textColor = defaultTextColor,
    this.hideImage = true,
  });

  const GradientContainer.hello({super.key})
      : title = 'Hello World!',
        // this.colors = defaulColors,
        mainColor = Colors.amber,
        secondaryColor = Colors.red,
        textColor = defaultTextColor,
        hideImage = true;

  const GradientContainer.dice({super.key})
      : title = '',
        // this.colors = defaulColors,
        mainColor = defaultMainColor,
        secondaryColor = defaultSecondaryColor,
        textColor = defaultTextColor,
        hideImage = false;

  final String title;

  // final List<Color> colors;
  final Color mainColor;
  final Color secondaryColor;
  final Color textColor;
  final bool hideImage;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        // colors: colors,
        colors: [mainColor, secondaryColor],
        begin: startAlignment,
        end: endAlignment,
      )),
      child: Center(
          child: hideImage
              ? StyledText(text: title, color: textColor)
              : const DiceRoller(),
      ),
    );
  }
}
