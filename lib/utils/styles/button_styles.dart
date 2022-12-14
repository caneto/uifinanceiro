import 'package:flutter/material.dart';
import 'package:uifinanceiro/utils/styles/colors_app.dart';
import 'package:uifinanceiro/utils/styles/text_styles.dart';

class ButtonStyles {
  static ButtonStyles? _instance;

  ButtonStyles._();

  static ButtonStyles get instance {
    _instance??= ButtonStyles._();
    return _instance!;
  }

  ButtonStyle get yellowButton => ElevatedButton.styleFrom(
    backgroundColor: ColorsApp.instance.yellow,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    textStyle: TextStyles.instance.textSecundaryFontExtraBold.copyWith(
      fontSize: 14,
    ),
  );

  ButtonStyle get transparentButton => ElevatedButton.styleFrom(
    backgroundColor: ColorsApp.instance.greenlinear,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    textStyle: TextStyles.instance.textPrimaryFontSemiBold.copyWith(
      fontSize: 14,
    ),
  );

  ButtonStyle get yellowOutlineButton => OutlinedButton.styleFrom(
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    side: BorderSide(
      color: ColorsApp.instance.yellow,
    ),
    textStyle: TextStyles.instance.textSecundaryFontExtraBold.copyWith(
      fontSize: 14,
    ),
  );

  ButtonStyle get primaryButton => ElevatedButton.styleFrom(
    backgroundColor: ColorsApp.instance.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    textStyle: TextStyles.instance.textSecundaryFontExtraBold.copyWith(
      fontSize: 14,
    ),
  );

  ButtonStyle get primaryOutlineButton => OutlinedButton.styleFrom(
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    side: BorderSide(
      color: ColorsApp.instance.primary,
    ),
    textStyle: TextStyles.instance.textSecundaryFontExtraBold.copyWith(
      fontSize: 14,
    ),
  );

}

extension ButtonStyleExtensions on BuildContext{
  ButtonStyles get buttonStyles => ButtonStyles.instance;
}