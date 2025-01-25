import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clean_code/utils/language/mm_detect.dart';
import 'package:get/get.dart';

import '../../utils/language/language_variable.dart';

class MmTextFormField extends StatefulWidget {

  final TextEditingController textController;
  final String label;
  final String hint;
  final String helperText;
  final IconData icon;
  final Function onChanged;
  final int maxLength;

  const MmTextFormField({super.key,required this.textController,required this.label,required this.hint,required this.icon, required this.onChanged, required this.maxLength, required this.helperText});


  @override
  State<MmTextFormField> createState() => _MmTextFormFieldState();
}

class _MmTextFormFieldState extends State<MmTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: true,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.newline,
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        maxLength: widget.maxLength,
        controller: widget.textController,
        decoration: InputDecoration(
        labelText: MMDetect.mmText(widget.label),
        hintText: MMDetect.mmText(widget.hint),
        prefixIcon:  Icon(widget.icon),
        helperText: MMDetect.mmText(widget.helperText),
        helperStyle: const TextStyle(fontSize: 10,color: Colors.grey),

        border: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurple),
        ),),
        validator: (value) {
        if (value == null || value.isEmpty) {
          return MMDetect.mmText(LanguageGlobalVar.txt_ed_msg_notEmpty.tr);
        }
        return null;
      },
    );
  }
}
