import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';
import '../../introduction/introduction_widget.dart';
import 'home_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //Return Stack so we can positioned a Textable Container later
    return Stack(
      children: [
        // Inside the column is where all our home elements will be
        Column(
          children: [
            //This stack is the reason for our Title text inside our colored box
            Stack(
              children: [
                Container(
                  color: AppColors.BLUE_BLACK,
                  height: 220.h,
                ),
                Positioned(
                  // top: 20.h,
                  child: Container(
                    margin: EdgeInsets.only(left: 20.w, right: 20.w, top: 25.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TitleText(
                          label: "Hi, Anthony",
                          color: Colors.white,
                          size: 16.sp,
                        ),
                        Icon(
                          CupertinoIcons.bell,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 100.h,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20.w, right: 20.w),
                      child: buildRow(
                        Colors.black,
                        "Featured Jobs",
                        CupertinoIcons.arrow_right,
                        Colors.black,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(
                          top: 20.h,
                          bottom: 20.h,
                        ),
                        height: 200.h,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return FeaturedJobOne();
                            })),
                    Container(
                      margin: EdgeInsets.only(left: 20.w, right: 20.w),
                      child: buildRow(
                        Colors.black,
                        "Recommended",
                        CupertinoIcons.arrow_right,
                        Colors.black,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 10.h,
                        left: 20.w,
                        right: 20.w,
                        // bottom: 20.h,
                      ),
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 10,
                        itemBuilder: (context, state) {
                          return Container(
                            margin: EdgeInsets.only(bottom: 15.h),
                            height: 75.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8.sp),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Column(
                                  //   children: [
                                  //     CircleAvatar(
                                  //       backgroundColor: Colors.transparent,
                                  //       child: Image(
                                  //         image: AssetImage(
                                  //             "assets/images/apple3.png"),
                                  //       ),
                                  //     ),
                                  //     Column(
                                  //       crossAxisAlignment:
                                  //           CrossAxisAlignment.start,
                                  //       children: [
                                  //         TitleText(label: "Graphic Design"),
                                  //         Row(
                                  //           children: [
                                  //             TitleText(label: "Internship"),
                                  //             TitleText(label: " . "),
                                  //             TitleText(label: "Zurich, Swiss"),
                                  //           ],
                                  //         ),
                                  //       ],
                                  //     ),
                                  //   ],
                                  // ),
                                  //
                                  // Column(
                                  //   crossAxisAlignment: CrossAxisAlignment.end,
                                  //   children: [
                                  //     Icon(CupertinoIcons.bookmark),
                                  //     TitleText(label: "\$8K/month"),
                                  //   ],
                                  // )

                                  //  First Item
                                  //First Row
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Colors.transparent,
                                            child: Image(
                                                image: AssetImage(
                                                    "assets/images/apple3.png")),
                                          ),
                                          SizedBox(
                                            width: 8.w,
                                          ),
                                          TitleText(label: "Graphic Design"),
                                        ],
                                      ),
                                      Icon(CupertinoIcons.bookmark)
                                    ],
                                  ),
                                  //Second Item
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 45.sp,
                                        ),
                                        child: Row(
                                          children: [
                                            TitleText(label: "Internship"),
                                            TitleText(label: " . "),
                                            TitleText(label: "Zurich, Swiss"),
                                          ],
                                        ),
                                      ),
                                      TitleText(label: "\$8K/month"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        Positioned(
          top: 80.h,
          right: 20.w,
          left: 20.w,
          child: Container(
            padding: EdgeInsets.only(bottom: 10.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.sp),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    offset: Offset(0, 2),
                    spreadRadius: 0.sp),
              ],
            ),
            height: 220.h,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BuildTinyTextField(
                  firstIcon: CupertinoIcons.search,
                  containerColor: Colors.white,
                  borderColor: Colors.transparent,
                  width: 300.w,
                  // height: 30,
                  label: 'Search Jobs',
                ),
                BuildTinyTextField(
                  firstIcon: CupertinoIcons.location_solid,
                  containerColor: Colors.white,
                  borderColor: Colors.transparent,
                  width: 300.w,
                  // height: 30,
                  label: 'Location',
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 105.w,
                    right: 105.w,
                    top: 15.h,
                    bottom: 15.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.ORANGE,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TitleText(
                    label: "Search now",
                    color: Colors.white,
                    size: 16.sp,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class FeaturedJobOne extends StatelessWidget {
  const FeaturedJobOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20.w,
      ),
      height: 100.h,
      width: 200.w,
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  child: Image(
                    image: AssetImage("assets/images/fb2.png"),
                  ),
                ),
                Icon(
                  CupertinoIcons.bookmark_fill,
                  color: AppColors.ORANGE,
                )
              ],
            ),
            TitleText(
              label: "Google Earth",
              color: Colors.grey,
            ),
            TitleText(
              label: "Product Designer",
              size: 16.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(CupertinoIcons.bag),
                      SizedBox(
                        width: 7.w,
                      ),
                      TitleText(
                          label: "Full Time",
                          color: Colors.black.withOpacity(0.6)),
                    ],
                  ),
                ),
                TitleText(
                    label: "\$16K/month", color: Colors.black.withOpacity(0.6)),
              ],
            ),
            TitleText(
              label: "New York, USA",
              color: Colors.black.withOpacity(0.5),
            )
          ],
        ),
      ),
    );
  }
}
