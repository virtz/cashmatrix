import 'package:auto_route/auto_route.dart';
import 'package:cashmatrix/presentation/routes/app_router.gr.dart';
import 'package:cashmatrix/presentation/walk_through/walk_through_screens/first_walk_through.dart';
import 'package:cashmatrix/presentation/walk_through/walk_through_screens/second_through_screen.dart';
import 'package:cashmatrix/presentation/walk_through/walk_through_screens/third_walktrhoug_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WalkThroughHome extends StatefulWidget {
  const WalkThroughHome({Key? key}) : super(key: key);

  @override
  State<WalkThroughHome> createState() => _WalkThroughHomeState();
}

class _WalkThroughHomeState extends State<WalkThroughHome> {
  final controller = PageController(viewportFraction: 1.0);
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final List<Widget> introWidgetList = [
      // const TermsAndConditions(),
      FirstWalkThrough(
        controller: controller,
      ),
      SecondThroughScreen(
        controller: controller,
      ),
      ThirdScreenWalkThrough(
        controller: controller,
      ),
    ];
    return Scaffold(
        body: SizedBox(
            child: Stack(
      children: [
        PageView.builder(
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          controller: controller,
          physics: const ClampingScrollPhysics(),
          itemCount: introWidgetList.length,
          itemBuilder: (context, index) {
            return introWidgetList[index];
          },
        ),
        Positioned(
          bottom: 0.0.h,
          left: 0.0,
          right: 80.0,
          child: Container(
            height: size.height * 0.25,
            // color: Colors.yellow,
            decoration: BoxDecoration(
                color: _currentIndex == 0 || _currentIndex == 2
                    ? Theme.of(context).primaryColor
                    : const Color(0xFF163B50),
                borderRadius:
                    BorderRadius.only(topRight: Radius.circular(70.r))),
            child: Padding(
              padding: EdgeInsets.only(left: 49.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50.h,
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: introWidgetList.length,
                      effect: CustomizableEffect(
                        activeDotDecoration: DotDecoration(
                          width: 32.w,
                          height: 10.h,
                          color: const Color(0xFF476C81),
                          // rotationAngle: 180,
                          verticalOffset: 0,
                          borderRadius: BorderRadius.circular(24),
                          // dotBorder: DotBorder(
                          //   padding: 2,
                          //   width: 2,
                          //   color: Colors.indigo,
                          // ),
                        ),
                        dotDecoration: DotDecoration(
                          width: 20.w,
                          height: 10.h,
                          color: const Color(0xFFFFB129),
                          borderRadius: BorderRadius.circular(16),
                          verticalOffset: 0,
                        ),

                        spacing: 6.0,
                        // activeColorOverride: (i) => colors[i],
                        // inActiveColorOverride: (i) => colors[i],
                      ),
                    ),
                  ),
                  Text("Transfer That Is Safe",
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w800,
                          color: _currentIndex == 0 || _currentIndex == 2
                              ? const Color(0xFF163B50)
                              : const Color(0xFFEE8520))),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text("You have nothing to be scared ",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFFFAFAFA))),
                  Text("about, we got you covered",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFFFAFAFA))),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20.0.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            AutoRouter.of(context).push(Login());
                          },
                          color: _currentIndex == 0 || _currentIndex == 2
                              ? Colors.white
                              : const Color(0xFFEE8520),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r)),
                          height: 50.h,
                          minWidth: 145.w,
                          child: Text('Start banking',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontFamily: 'DMSans',
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFF163B50))),
                        ),
                        GestureDetector(
                            onTap: () {
                              controller.animateToPage(_currentIndex++,
                                  duration: const Duration(seconds: 2),
                                  curve: Curves.ease);
                            },
                            child: Image.asset('assets/images/arrow.png')),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    )));
  }
}
