import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clean_code/utils/constants/app_constants.dart';
import 'package:flutter_clean_code/utils/language/mm_detect.dart';
import 'package:get/get.dart';
import '../../utils/language/language_variable.dart';

enum TextInput { text ,multi , number, password, phone, email }

enum TextInputStyle { inline, outline, fill}

class MyanmarTextFormField extends StatefulWidget {

  final String label;
  final String hint;
  final String helperText;
  final TextInputStyle style;
  final TextInput input;
  final Function onChanged;
  final int? maxLength;
  final bool? readOnly;

  const MyanmarTextFormField(
      { super.key,
        required this.label,
        required this.hint,
        required this.onChanged,
        required this.helperText,
        required this.input,
        required this.style,
        this.readOnly,
        this.maxLength,
      });

  @override
  State<MyanmarTextFormField> createState() => _MyanmarTextFormFieldState();

}

class _MyanmarTextFormFieldState extends State<MyanmarTextFormField> {

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: true,
        readOnly: widget.readOnly ?? false,
        textInputAction: TextInputAction.newline,
        maxLength: widget.maxLength ?? AppConstants.maxLengthSmall,
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        keyboardType: TextInputType.text,

    );
  }
}
