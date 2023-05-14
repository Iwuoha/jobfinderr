import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinderr/introduction/bloc/introduction_bloc.dart';
import 'package:jobfinderr/introduction/bloc/introduction_event.dart';
import 'package:jobfinderr/introduction/bloc/introduction_state.dart';
import 'package:jobfinderr/welcome/welcome.dart';

import '../constants/colors.dart';
import 'introduction_widget.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30.0.w, right: 30.0.w),
              child: TitleText(
                label: "Find Your Dream Jobs Only On Urban.io",
                size: 25.sp,
              ),
            ),
            SizedBox(
              height: 10.sp,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0.w, right: 30.0.w),
              child: TitleText(
                label:
                    "with which we provide various categories and fast access to ajobs that you want",
                size: 15.sp,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10.sp,
            ),
            Container(
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/img3.jpg"),
              ),
            ),
            SizedBox(
              height: 10.sp,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.sp),
              child: Align(
                alignment: Alignment.topLeft,
                child: TitleText(
                  label: "Your current role as :",
                  size: 18.sp,
                ),
              ),
            ),
            SizedBox(
              height: 10.sp,
            ),
            BuildTextField(
              firstIcon: CupertinoIcons.bag,
              textColor: Colors.black,
              label: "Looking for new Jobs",
              lastIcon: Icons.check,
              borderColor: Colors.transparent,
              containerColor: Colors.blue.shade50.withOpacity(0.7),
            ),
            SizedBox(
              height: 10.sp,
            ),
            BuildTextField(
              firstIcon: CupertinoIcons.person,
              textColor: Colors.grey,
              label: "Open Job Vacancies",

              borderColor: Colors.black,
              // containerColor: Colors.blue.shade50.withOpacity(0.7),
            ),
            SizedBox(
              height: 10.sp,
            ),
            SizedBox(
              height: 10.sp,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil("welcomePage", (route) => false);
                  print("I got so tapped");
                },
                child: Container(
                  margin: EdgeInsets.only(right: 20.w),
                  padding: EdgeInsets.only(
                      left: 30.w, right: 30.w, top: 10.h, bottom: 10.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.sp),
                    color: AppColors.ORANGE,
                  ),
                  child: TitleText(
                    label: "Continue",
                    color: Colors.white,
                    size: 16.sp,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.sp,
            ),
          ],
        ),
      ),
    );
  }
}
