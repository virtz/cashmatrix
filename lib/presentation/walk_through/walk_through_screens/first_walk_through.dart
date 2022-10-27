// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

import 'package:auto_route/auto_route.dart';
import 'package:cashmatrix/presentation/walk_through/walk_through_screens/second_through_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstWalkThrough extends StatefulWidget {
  final PageController? controller;
  const FirstWalkThrough({Key? key, this.controller}) : super(key: key);

  @override
  State<FirstWalkThrough> createState() => _FirstWalkThroughState();
}

class _FirstWalkThroughState extends State<FirstWalkThrough> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SizedBox(
            // height: size.height,
            child: Column(children: [
              Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(height: 40.h),
                      Image.asset('assets/images/happy_lady_screen_one.png',
                          width: size.width, height: size.height * 0.95),
                    ],
                  ),
                  Positioned(
                      top: 0.h,
                      left: 0.h,
                      // right: 0.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/top_image.png'),
                          SizedBox(
                            height: 40.h,
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
            ]),
          ),
        ));
  }

  // navigateToNext() {
  //   Timer.of()
  //   // Navigator.of(context)
  //   //     .push(MaterialPageRoute(builder: (context) => SecondThroughScreen()));
  // }
}
