import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 1.h,
      ),
      padding: EdgeInsets.only(
        top: 3.h,
        bottom: 3.h,
        left: 3.w,
      ),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16.sp),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter Tips',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
              ),
            ),
            subtitle: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 2.h,
              ),
              child: Text(
                'build your career with this course',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 14.sp,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                color: Colors.black,
                size: 28.sp,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 6.w,
            ),
            child: Text(
              'November 10, 2022',
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 10.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
