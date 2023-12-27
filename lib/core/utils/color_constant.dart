import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9004c = fromHex('#4c000000');

  static Color blueGray200 = fromHex('#bac1ce');

  static Color gray400 = fromHex('#c4c4c4');

  static Color blueGray100 = fromHex('#d6dae2');

  static Color blueGray400 = fromHex('#74839d');

  static Color blueA700 = fromHex('#0061ff');

  static Color redA200 = fromHex('#ff4b4b');

  static Color blueA200 = fromHex('#588af1');

  static Color red400 = fromHex('#f14a60');

  static Color black9000c = fromHex('#0c000000');

  static Color gray300 = fromHex('#e3e4e5');

  static Color gray50 = fromHex('#f9fbff');

  static Color gray100 = fromHex('#f3f4f5');

  static Color black90087 = fromHex('#87000000');

  static Color black90075 = fromHex('#75000000');

  static Color black90066 = fromHex('#66000000');

  static Color black90033 = fromHex('#33000000');

  static Color black900 = fromHex('#000000');

  static Color blueGray800 = fromHex('#363853');

  static Color blueGray900 = fromHex('#262b35');

  static Color blueGray40002 = fromHex('#888888');

  static Color blueGray40001 = fromHex('#75839d');

  static Color whiteA700 = fromHex('#ffffff');

  static Color deepOrangeA400 = fromHex('#ff4b00');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
