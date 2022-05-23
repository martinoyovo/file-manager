import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray400 = fromHex('#c4c4c4');

  static Color black9004d = fromHex('#4d000000');

  static Color gray900 = fromHex('#26262e');

  static Color bluegray100 = fromHex('#ccd6e8');

  static Color redA700B2 = fromHex('#b2e3001a');

  static Color gray80021 = fromHex('#21383838');

  static Color gray300 = fromHex('#e3e3e3');

  static Color gray100 = fromHex('#f7f7f7');

  static Color yellow600 = fromHex('#ffd133');

  static Color whiteA70075 = fromHex('#75ffffff');

  static Color yellow60040 = fromHex('#40ffd133');

  static Color black900 = fromHex('#00001a');

  static Color bluegray50047 = fromHex('#476b7d94');

  static Color black901 = fromHex('#000000');

  static Color bluegray200 = fromHex('#a6b0bd');

  static Color whiteA700 = Colors.white;

  static Color redA700 = fromHex('#e3001a');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
