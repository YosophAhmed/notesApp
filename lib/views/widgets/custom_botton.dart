import 'package:flutter/material.dart';
import 'package:notes/constants/colors.dart';
import 'package:sizer/sizer.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final double width;
  final double height;

  const CustomButton({
    Key? key,
    required this.label,
    required this.onTap,
    this.width = double.infinity,
    this.height = 3.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8.sp),
        ),
        alignment: Alignment.center,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}