import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinderr/introduction/introduction_widget.dart';
import 'package:jobfinderr/welcome/welcome_widget.dart';

import '../constants/colors.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: buildAppBarTwo(),
      body: Container(
        margin: EdgeInsets.only(top: 20.h),
        child: GridView.count(
          mainAxisSpacing: 5.0.w,
          crossAxisSpacing: 1.0.w,
          crossAxisCount: 2,
          children: List.generate(choices.length, (index) {
            return Container(
              margin: EdgeInsets.only(left: 10.w, right: 10.w),
              child: SelectCard(
                choices: choices[index],
              ),
            );
          }),
        ),
      ),
      bottomSheet: bottomSheet(context),
    ));
  }
}
