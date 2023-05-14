import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(3.0.sp),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60.h,
              child: Image(
                image: AssetImage("assets/images/urbaniologo.png"),
              ),
            ),
            TitleText(label: "Urban.io", size: 20.sp, color: Colors.black)
          ],
        ),
      ),
    ),
  );
}

class TitleText extends StatelessWidget {
  String label;
  Color? color;
  double? size;
  FontWeight? fontWeight;
  TitleText({required this.label, this.color, this.size, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: TextAlign.center,
      maxLines: 2,
      style: TextStyle(
        color: color,
        //Colors.black,
        fontSize: size,
        //20.sp,
        fontWeight: fontWeight ?? FontWeight.bold,
      ),
    );
  }
}

Widget buildTextField() {
  return Container(
    margin: EdgeInsets.only(left: 20.w, right: 20.w),
    padding: EdgeInsets.only(left: 20.w, right: 20.w),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.sp),
      color: Colors.red,
    ),
    height: 70.h,
    width: 500.w,
    child: Row(
      children: [
        Icon(CupertinoIcons.bag),
        Container(
          margin: EdgeInsets.only(left: 10.w, right: 20.w),
          child: SizedBox(
            width: 200.w,
            child: Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Looking for new jobs",
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        Icon(CupertinoIcons.checkmark_alt)
      ],
    ),
  );
}

class BuildTextField extends StatelessWidget {
  Color? borderColor;
  Color? textColor;
  IconData? lastIcon;
  Color? containerColor;
  IconData? firstIcon;
  String label;
  double? height;
  double? width;
  // double? widthTwo;

  BuildTextField({
    this.borderColor,
    this.textColor,
    this.lastIcon,
    this.containerColor,
    this.firstIcon,
    required this.label,
    this.height,
    this.width,
    // this.widthTwo
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.w, right: 20.w),
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
              // width: widthTwo,
              width: 200.w,
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
