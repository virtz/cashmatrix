import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThirdScreenWalkThrough extends StatefulWidget {
  final PageController? controller;
  const ThirdScreenWalkThrough({
    Key? key,
    this.controller,
  }) : super(key: key);

  @override
  State<ThirdScreenWalkThrough> createState() => _ThirdScreenWalkThroughState();
}

class _ThirdScreenWalkThroughState extends State<ThirdScreenWalkThrough> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
        // height: size.height,
        child: Column(children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.h),
                  child: Image.asset(
                    'assets/images/main_logo.png',
                    height: 47.h,
                    width: 211.w,
                  ),
                ),
              ),
              Positioned(
                  top: 0.h,
                  left: 0.h,
                  // right: 0.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/top_image2.png'),
                      // SizedBox(
                      //   height: 40.h,
                      // ),
                    ],
                  )),
              Positioned(
                top: 84.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.h),
                  child: Image.asset(
                    'assets/images/main_logo.png',
                    height: 47.h,
                    width: 211.w,
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 80.h),
                  Image.asset(
                    'assets/images/woman_rejoicing3.png',
                    height: size.height * 0.90,
                    width: size.width,
                  ),
                ],
              ),
            ],
          ),
        ]),
      ),
    ));
  }
}
