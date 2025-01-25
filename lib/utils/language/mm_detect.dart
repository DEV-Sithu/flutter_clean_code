import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:rabbit_converter/rabbit_converter.dart';

class MDetect {
  MDetect._();

  static bool isUnicode() {
    return _textSize("က").width == _textSize('က္က').width;
  }

  static Size _textSize(String text) {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: text),
        maxLines: 1,
        textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size;
  }


  static String mmText(String text) {
    if (MDetect.isUnicode()) {
      Logger().d("UNICODE");
    } else {
      Logger().d("ZawGyi");
    }
    return MDetect.isUnicode() ? text : Rabbit.uni2zg(text);
  }
}