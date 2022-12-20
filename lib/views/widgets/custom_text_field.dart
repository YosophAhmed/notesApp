import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;

  const CustomTextField({
    Key? key,
    required this.hintText,
    this.onSaved,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: kPrimaryColor,
        ),
      ),
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
    );
  }
}

OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.sp),
    borderSide: BorderSide(
      color: color ?? Colors.white,
    ),
  );
}
