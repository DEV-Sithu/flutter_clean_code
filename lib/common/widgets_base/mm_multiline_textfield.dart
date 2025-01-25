import 'package:flutter/material.dart';

import '../../utils/language/mm_detect.dart';

class MmMultilineTextField extends StatefulWidget {

  final TextEditingController textController;
  final String label;
  final String hint;
  final Function onChanged;

  const MmMultilineTextField({super.key,required this.textController,required this.label,required this.hint, required this.onChanged});


  @override
  State<MmMultilineTextField> createState() => _MmMultilineTextFieldState();
}

class _MmMultilineTextFieldState extends State<MmMultilineTextField> {
  @override
  Widget build(BuildContext context) {
    return    TextFormField(
      keyboardType: TextInputType.multiline,
      autofocus: true,
      minLines: 3,
      maxLines: 4,
      controller: widget.textController,
      decoration: InputDecoration(
        labelText: MMDetect.mmText(widget.label),
        hintText: MMDetect.mmText(widget.hint),
        border: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurple),
        ),
      ),
    );
  }
}
