import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';

import '../../introduction/introduction_widget.dart';

AppBar buildAppBarWidget() {
  return AppBar(
    elevation: 0,
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(1.0.sp),
      child: Container(
        margin: EdgeInsets.only(left: 20.sp, right: 20.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TitleText(label: "Hi, Anthony", size: 16.sp, color: Colors.black),
            Icon(CupertinoIcons.bell)
          ],
        ),
      ),
    ),
  );
}

Row buildRow(
  Color? textColor,
  String? rowText,
  IconData iconData,
  Color iconColor,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      TitleText(
        label: rowText ?? "Hi, Anthony",
        size: 17.sp,
        color: textColor ?? Colors.white,
      ),
      Icon(
        iconData ?? CupertinoIcons.bell,
        color: iconColor ?? Colors.white,
      ),
    ],
  );
}

class BuildTinyTextField extends StatelessWidget {
  Color? borderColor;
  Color? textColor;
  IconData? lastIcon;
  Color? containerColor;
  IconData? firstIcon;
  String label;
  double? height;
  double? width;
  double? widthTwo;

  BuildTinyTextField(
      {this.borderColor,
      this.textColor,
      this.lastIcon,
      this.containerColor,
      this.firstIcon,
      required this.label,
      this.height,
      this.width,
      this.widthTwo});

  @override
  Widget build(BuildContext context) {
    return Container(
      // reduce the left margin
      margin: EdgeInsets.only(left: 5.w, right: 20.w),
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      decoration: BoxDecoration(
        border: Border.all(color: borderColor!),
        borderRadius: BorderRadius.circular(20.sp),
        color: containerColor,
      ),
      height: height,
      width: width,
      child: Row(
        children: [
          Icon(firstIcon),
          Container(
            margin: EdgeInsets.only(left: 10.w, right: 20.w),
            child: SizedBox(
              // call this widthTwo
              width: 205,
              // width: 200.w,
              child: Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: label,
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                        color: textColor, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Icon(lastIcon)
        ],
      ),
    );
  }
}
