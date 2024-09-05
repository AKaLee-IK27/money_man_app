import 'package:flutter/material.dart';

class AppColors {
  static const transparent = Color(0x00000000);

  static const white = Color(0xffffffff);
  static Color white4 = const Color(0xffffffff).withOpacity(0.04);
  static Color white6 = const Color(0xffffffff).withOpacity(0.06);
  static Color white20 = const Color(0xffffffff).withOpacity(0.2);
  static Color white50 = const Color(0xffffffff).withOpacity(0.5);

  static const black = Color(0xff000000);
  static Color black4 = const Color(0xff000000).withOpacity(0.04);
  static Color black6 = const Color(0xff000000).withOpacity(0.06);
  static Color black20 = const Color(0xff000000).withOpacity(0.2);
  static Color black50 = const Color(0xff000000).withOpacity(0.5);

  static const primary = Color(0xffA0CCF8);
  static const primaryDark = Color(0xff57A4F2);
  static const brand = Color(0xff0E33F3);

  static const greenDark = Color(0xff46987F);
  static const greenLight = Color(0xff9BF9D3);
  static const blueLight = Color(0xffA0CCF8);
  static const yellowLight = Color(0xffF9E79D);
  static const redLight = Color(0xffF9A29D);
  static const redDark = Color(0xffC62B30);
  static const softOrange = Color(0xffF9C29D);
  static const brown = Color(0xffA67C5B);

  static const systemRed = Color(0xffEF4E4E);
  static const systemGreen = Color(0xff3EBD93);
  static const systemYellow = Color(0xffFBBE4A);
  static const systemBlue = Color(0xff37ABFF);

  static Color getShade(Color color, {bool darker = false, double value = .1}) {
    assert(value >= 0 && value <= 1);

    final hsl = HSLColor.fromColor(color);
    final hslDark = hsl.withLightness(
      (darker ? (hsl.lightness - value) : (hsl.lightness + value))
          .clamp(0.0, 1.0),
    );

    return hslDark.toColor();
  }

  static MaterialColor getMaterialColorFromColor(Color color) {
    final Map<int, Color> colorShades = {
      50: getShade(color, value: 0.5),
      100: getShade(color, value: 0.4),
      200: getShade(color, value: 0.3),
      300: getShade(color, value: 0.2),
      400: getShade(color),
      500: color, //Primary value
      600: getShade(color, darker: true),
      700: getShade(color, value: 0.15, darker: true),
      800: getShade(color, value: 0.2, darker: true),
      900: getShade(color, value: 0.25, darker: true),
    };
    return MaterialColor(color.value, colorShades);
  }
}
