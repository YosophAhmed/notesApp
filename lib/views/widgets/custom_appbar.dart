import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'custom_icon.dart';


class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData icon;

  const CustomAppBar({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 28.sp,
          ),
        ),
        const Spacer(),
        CustomIcon(
          icon: icon,
        ),
      ],
    );
  }
}
