import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';
import '../introduction/introduction_widget.dart';

AppBar buildAppBarTwo() {
  return AppBar(
    elevation: 0,
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(30.0.sp),
      child: Container(
        height: 65.h,
        child: TitleText(
          label: "Tell us what kind of jobs you are looking for",
          size: 25.sp,
        ),
      ),
    ),
  );
}

Container bottomSheet(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(left: 20.w, right: 20.w),
    height: 70.h,
    color: AppColors.ORANGE,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TitleText(
          label: "Find Jobs",
          size: 18.h,
          color: Colors.white,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamedAndRemoveUntil(
              "landingPage",
              (route) => false,
            );
          },
          child: Icon(
            CupertinoIcons.arrow_right,
            color: Colors.white,
          ),
        )
      ],
    ),
  );
}

class Choices {
  final String title;
  final String imagePath;
  Color color;
  Color textColor;

  Choices(
      {required this.title,
      required this.imagePath,
      required this.color,
      required this.textColor});
}

List<Choices> choices = <Choices>[
  Choices(
      title: "UI/UX Designer",
      imagePath: "assets/images/img1.jpg",
      color: AppColors.BLUE_BLACK,
      textColor: Colors.white),
  Choices(
      title: "Digital Marketing",
      imagePath: "assets/images/img2.jpg",
      color: Colors.blue.shade100.withOpacity(0.2),
      textColor: Colors.black),
  Choices(
      title: "Web Developer",
      imagePath: "assets/images/img3.jpg",
      color: Colors.blue.shade100.withOpacity(0.2),
      textColor: Colors.black),
  Choices(
      title: "Cloud Computing",
      imagePath: "assets/images/img1.jpg",
      color: Colors.blue.shade100.withOpacity(0.2),
      textColor: Colors.black),
  Choices(
      title: "Product Manager",
      imagePath: "assets/images/img1.jpg",
      color: AppColors.BLUE_BLACK,
      textColor: Colors.white),
  Choices(
      title: "Software Engineer",
      imagePath: "assets/images/img1.jpg",
      color: AppColors.BLUE_BLACK,
      textColor: Colors.white),
];

class SelectCard extends StatefulWidget {
  SelectCard({
    Key? key,
    required this.choices,
  }) : super(key: key);
  final Choices choices;

  @override
  State<SelectCard> createState() => _SelectCardState();
}

class _SelectCardState extends State<SelectCard> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.choices.color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.sp),
      ),
      elevation: 0,
      child: Column(
        children: [
          //Hello, this Checkbox
          Align(
            alignment: Alignment.topRight,
            child: Checkbox(
              activeColor: Colors.white,
              checkColor: AppColors.ORANGE,
              value: isChecked,
              onChanged: (newValue) {
                setState(() {
                  isChecked = newValue;
                });
              },
            ),
          ),
          //Hello this is Imaage
          SizedBox(
            height: 100.h,
            child: Image(
              image: AssetImage(widget.choices.imagePath),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          TitleText(
            label: widget.choices.title,
            color: widget.choices.textColor,
            size: 16.sp,
          )
        ],
      ),
    );
  }
}
