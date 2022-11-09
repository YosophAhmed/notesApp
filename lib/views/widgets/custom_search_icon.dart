import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7.h,
      width: 7.h,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: Center(
        child: Icon(
          Icons.search,
          size: 28.sp,
        ),
      ),
    );
  }
}
