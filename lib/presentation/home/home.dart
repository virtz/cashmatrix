import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = PageController(viewportFraction: 0.78);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25..w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset("assets/images/home_profile_icon.png"),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text("Hi, Oluwaseun",
                        style: TextStyle(
                            fontFamily: "DMSans",
                            fontSize: 20.sp,
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w700))
                  ],
                ),
                Stack(
                  children: [
                    Image.asset("assets/images/notification_icon.png"),
                    Positioned(
                        right: 1.h,
                        child:
                            Image.asset("assets/images/notification_dot.png")),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          SizedBox(
            width: size.width,
            height: size.height * 0.2,
            child: Padding(
              padding: EdgeInsets.only(left: 15.0.w),
              child: PageView(
                controller: controller,
                scrollDirection: Axis.horizontal,
                padEnds: false,
                // shrinkWrap: true,
                children: [
                  Image.asset(
                    "assets/images/mater_card.png",
                    fit: BoxFit.fill,
                    width: 300.w,
                    // scale: 1.8,
                  ),
                  Image.asset(
                    "assets/images/mater_card.png",
                    fit: BoxFit.fill,
                    width: 300.w,
                    // scale: 1.8,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
            child: Center(
              child: SmoothPageIndicator(
                controller: controller,
                count: 2,
                effect: CustomizableEffect(
                  activeDotDecoration: DotDecoration(
                    width: 15.w,
                    height: 5.h,
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
                    width: 45.w,
                    height: 5.h,
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
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Quick Actions',
                    style: TextStyle(
                        fontSize: 21.sp,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w700,
                        fontFamily: "DMSans")),
                GridView(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1.9.h,
                      mainAxisExtent: 80.h,
                      mainAxisSpacing: 30.h,
                      crossAxisSpacing: 10.h),
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(
                            22,
                            59,
                            80,
                            0.05,
                          ),
                          borderRadius: BorderRadius.circular(5.r)),
                      child: Padding(
                        padding: EdgeInsets.all(8.0.w),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assets/images/send_money_icon.png'),
                              SizedBox(
                                width: 60.w,
                                child: Text(
                                  "Send Money",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontFamily: "DMSans",
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                            ]),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(
                            22,
                            59,
                            80,
                            0.05,
                          ),
                          borderRadius: BorderRadius.circular(5.r)),
                      child: Padding(
                        padding: EdgeInsets.all(8.0.w),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assets/images/money_icon.png'),
                              SizedBox(
                                width: 60.w,
                                child: Text(
                                  "Bills Payment",
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontFamily: "DMSans",
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                            ]),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(
                            22,
                            59,
                            80,
                            0.05,
                          ),
                          borderRadius: BorderRadius.circular(5.r)),
                      child: Padding(
                        padding: EdgeInsets.all(8.0.w),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assets/images/airtime_icon.png'),
                              SizedBox(
                                width: 60.w,
                                child: Text(
                                  "Airtime & Data",
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontFamily: "DMSans",
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                            ]),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(
                            22,
                            59,
                            80,
                            0.05,
                          ),
                          borderRadius: BorderRadius.circular(5.r)),
                      child: Padding(
                        padding: EdgeInsets.all(4.0.w),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assets/images/betting_icon.png'),
                              SizedBox(
                                width: 60.w,
                                child: Text(
                                  "Betting",
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontFamily: "DMSans",
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                            ]),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(
                            22,
                            59,
                            80,
                            0.05,
                          ),
                          borderRadius: BorderRadius.circular(5.r)),
                      child: Padding(
                        padding: EdgeInsets.all(8.0.w),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assets/images/qr_code_icon.png'),
                              SizedBox(
                                width: 60.w,
                                child: Text(
                                  "QR Payment",
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontFamily: "DMSans",
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                            ]),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(
                            22,
                            59,
                            80,
                            0.05,
                          ),
                          borderRadius: BorderRadius.circular(5.r)),
                      child: Padding(
                        padding: EdgeInsets.all(8.0.w),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assets/images/more_icon.png'),
                              SizedBox(
                                width: 60.w,
                                child: Text(
                                  "More+",
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontFamily: "DMSans",
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                            ]),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(
                            22,
                            59,
                            80,
                            0.05,
                          ),
                          borderRadius: BorderRadius.circular(5.r)),
                      child: Padding(
                        padding: EdgeInsets.all(8.0.w),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: []),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                Container(
                  height: 120.h,
                  width: size.width,
                  color: const Color(0xFFD9D9D9),
                  child: Center(
                    child: Text("Ads Poster",
                        style: TextStyle(
                            fontSize: 31.sp,
                            fontFamily: "DMSans",
                            color: Theme.of(context).primaryColor)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
