import 'package:flutter/material.dart';
import '../../utils/language/mm_detect.dart';

class MyanmarTextView extends StatelessWidget {

   const MyanmarTextView(
     String this.data,
     {super.key,
      this.size,
      this.color,
      this.isBold
     });

     final String? data;
     final double? size;
     final Color? color;
     final bool? isBold;

  @override
  Widget build(BuildContext context) {
    isBold ??  false;
    return Text(MMDetect.mmText(data!),
           style: TextStyle(
                  fontSize: size,
                  color: color,
                  fontWeight: isBold == false ?FontWeight.normal :FontWeight.w900));
  }

}
