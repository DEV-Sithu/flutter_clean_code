import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../utils/language/language_variable.dart';
import '../../utils/language/mm_detect.dart';

class MmNumberTextField extends StatefulWidget {

  final TextEditingController controller;
  final String  label;
  final String hint;
  final String helperText;
  final IconData icon;
  final Function onChanged;
  final int maxLength;

  const MmNumberTextField({super.key,required this.label,required this.hint, required this.controller,required this.icon, required this.onChanged, required this.maxLength, required this.helperText});


  @override
  State<MmNumberTextField> createState() => _MmNumberTextfieldState();
}

class _MmNumberTextfieldState extends State<MmNumberTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: TextInputType.number,
      maxLength: widget.maxLength,

      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
      decoration: InputDecoration(
        labelText: MMDetect.mmText(widget.label),
        hintText: MMDetect.mmText(widget.hint),
        helperText: MMDetect.mmText(widget.helperText),
        helperStyle: const TextStyle(fontSize: 10,color: Colors.grey),
        prefixIcon: GestureDetector(child: Icon(widget.icon)
          ,onTap: (){
          },),
        border: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurple),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return MMDetect.mmText(LanguageGlobalVar.txt_ed_msg_notEmpty.tr);
        }
        return null;
      },
    );
  }
}
