import 'package:auto_route/auto_route.dart';
import 'package:cashmatrix/presentation/general_widgets/custom_button.dart';
import 'package:cashmatrix/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 150.h,
          ),
          Center(
            child: Transform.scale(
              scale: 1.4,
              // alignment: Alignment.center,
              child: Image.asset(
                'assets/images/main_logo.png',
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Image.asset('assets/images/big_tick_orange.png'),
          SizedBox(
            height: 15.h,
          ),
          Text('Account created successfully',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 37.sp,
                  fontFamily: "DMSans",
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w700)),
          SizedBox(
            height: 15.h,
          ),
          Text("You are good to go..",
              style: TextStyle(
                  fontSize: 20.sp,
                  fontFamily: "DMSans",
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w500)),
          SizedBox(
            height: 33.h,
          ),
          CustomButton(
            "Start using my account",
            fontSize: 19.sp,
            width: 330.w,
            height: 62.h,
            onPressed: () {
              AutoRouter.of(context).push(const FingerPrintRoute());
            },
          )
        ],
      ),
    )));
  }
}
