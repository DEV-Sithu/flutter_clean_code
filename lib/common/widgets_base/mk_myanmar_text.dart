import 'package:flutter/material.dart';

import '../../utils/language/mm_detect.dart';

class MKMyanmarText extends StatelessWidget {

   const MKMyanmarText( {required this.text,required this.size,required this.color,required this.isBold});

   final String text;
   final double size;
   final Color color;
   final bool isBold;

  @override
  Widget build(BuildContext context) {
    return Text(MMDetect.mmText(text),style:  TextStyle(fontSize: size,color: color,fontWeight: isBold?FontWeight.w900:FontWeight.normal));
  }
}
