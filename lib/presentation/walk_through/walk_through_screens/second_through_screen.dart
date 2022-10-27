import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondThroughScreen extends StatefulWidget {
  final PageController? controller;
  const SecondThroughScreen({Key? key, this.controller}) : super(key: key);

  @override
  State<SecondThroughScreen> createState() => _SecondThroughScreenState();
}

class _SecondThroughScreenState extends State<SecondThroughScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  SizedBox(height: 10.h),
                  Image.asset('assets/images/woman_rejoicing2.png'),
                ],
              ),
              Positioned(
                  top: 0.h,
                  left: 0.h,
                  // right: 0.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image.asset('assets/images/top_image.png'),
                      SizedBox(
                        height: 93.h,
                      ),
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
                    ],
                  )),
            ],
          ),
        ],
      ),
    ));
  }
}
