import 'package:flutter/material.dart';
import 'package:second_app/styled_text.dart';

const Alignment endAlignment = Alignment.bottomRight;
const Alignment startAlignment = Alignment.topLeft;
const Color defaultMainColor = Colors.white;
const Color defaultSecondaryColor = Colors.blueGrey;
const Color defaultTextColor = Colors.white;
// const List<Color> defaultColors = [Colors.white, Colors.blueGrey];
const String defaultImagePath = 'assets/images/dice-1.png';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    this.title = '',
    // this.colors = defaulColors,
    this.mainColor = defaultMainColor,
    this.secondaryColor = defaultSecondaryColor,
    this.textColor = defaultTextColor,
    this.imagePath = defaultImagePath,
    this.hideImage = true,
  });

  const GradientContainer.hello({super.key})
      : title = 'Hello World!',
        mainColor = Colors.amber,
        secondaryColor = Colors.red,
        textColor = defaultTextColor,
        imagePath = defaultImagePath,
        hideImage = true;

  const GradientContainer.dice({super.key})
      : title = '',
        mainColor = defaultMainColor,
        secondaryColor = defaultSecondaryColor,
        textColor = defaultTextColor,
        imagePath = defaultImagePath,
        hideImage = false;

  final String title;

  // final List<Color> colors;
  final Color mainColor;
  final Color secondaryColor;
  final Color textColor;
  final String imagePath;
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
              : Image.asset(
                  imagePath,
                  opacity: AlwaysStoppedAnimation(hideImage ? 0.0 : 100.0),
                )),
    );
  }
}
