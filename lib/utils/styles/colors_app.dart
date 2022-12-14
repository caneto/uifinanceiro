import 'package:flutter/widgets.dart';

class ColorsApp {
  static ColorsApp? _instance;

  ColorsApp._();
  static ColorsApp get instance{
    _instance??= ColorsApp._();
    return _instance!;
  }

  Color get primary => const Color(0xFF791435);
  Color get secundary => const Color(0xFFFDCE50);
  Color get yellow => const Color(0xFFFDCE50);
  Color get greyDark => const Color(0xFF999999);

  Color get green => const Color(0xFF438883);
  Color get green1 => const Color(0xFF438883);
  Color get green2 => const Color(0xFF63B5AF);
  Color get greenlinear => const Color(0xFF69AEA9);
  Color get greenlinear2 => const Color(0xFF3F8782);
  Color get greencard => const Color(0xFF2F7E79); 
  Color get greenfundo => const Color(0xFF408A7C);
  Color get greennumber => const Color(0xFF25A969);
  
  Color get orangeBadge => const Color(0xFFFFAB7B);

  Color get grey => const Color(0xFF666666);
  Color get lightGrey => const Color(0xFFAAAAAA);
  Color get iceWhite =>const Color(0xFFEEF8F7);
  Color get darkGrey => const Color(0xFF444444);
  Color get error => const Color(0xFFF44336);

  Color get dartblue => const Color(0xFF090943);
}

extension ColorsAppExtensions on BuildContext {
  ColorsApp get colors => ColorsApp.instance;
}