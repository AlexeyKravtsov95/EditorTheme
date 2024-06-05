import 'package:theme_changing/util/constants.dart';

class ColorPallete {
  ColorPallete({
    required this.firstColor,
    required this.secondColor,
    required this.thirdColor,
    required this.fouthColor,
  });

  final firstColor;
  final secondColor;
  final thirdColor;
  final fouthColor;

  static final firstPallete = ColorPallete(
      firstColor: ColorConst.grey,
      secondColor: ColorConst.lightGreen,
      thirdColor: ColorConst.white,
      fouthColor: ColorConst.grey);

  static final secondsPallete = ColorPallete(
    firstColor: ColorConst.lightBlue,
    secondColor: ColorConst.blue,
    thirdColor: ColorConst.white,
    fouthColor: ColorConst.grey,
  );

  static final thirdPallete = ColorPallete(
    firstColor: ColorConst.lightBrown,
    secondColor: ColorConst.orange,
    thirdColor: ColorConst.white,
    fouthColor: ColorConst.grey,
  );
}
