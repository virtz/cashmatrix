import 'package:auto_route/auto_route.dart';
import 'package:cashmatrix/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreatAccount extends StatelessWidget {
  const CreatAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 150.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0.w),
          child: Transform.scale(
            scale: 1.1,
            alignment: Alignment.topLeft,
            child: Image.asset(
              'assets/images/main_logo.png',
            ),
          ),
        ),
        SizedBox(height: 106.h),
        Align(
          child: Text('Create Account',
              style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF163B50),
                  fontFamily: 'DMSans')),
        ),
        SizedBox(height: 27.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 49.0),
          child: Text('Easy creation of account with:',
              style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: "DMSans")),
        ),
        GestureDetector(
          onTap: () {
            AutoRouter.of(context).push(const CreateAccount2());
          },
          child: Container(
            // height: 70.h,
            width: size.width,
            color: const Color(0xFFF5F5F5),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0.w, vertical: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/bank_logo_ca.png'),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Bank account",
                              style: TextStyle(
                                  fontFamily: "DMSans",
                                  fontSize: 15.sp,
                                  color: const Color(0xFF163B50))),
                          Text('Use your existing account from another',
                              style: TextStyle(
                                  fontSize: 11.sp,
                                  fontFamily: 'DMSans',
                                  color: const Color.fromRGBO(0, 0, 0, 0.4))),
                          Text(' Bank to sign up',
                              style: TextStyle(
                                  fontSize: 11.sp,
                                  fontFamily: 'DMSans',
                                  color: const Color.fromRGBO(0, 0, 0, 0.4)))
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [Image.asset('assets/images/purple_arrow.png')],
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 23.h),
        GestureDetector(
          onTap: () {
            AutoRouter.of(context).push(const CreateAccount2());
          },
          child: Container(
            // height: 62.h,
            width: size.width,
            color: const Color(0xFFF5F5F5),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0.w, vertical: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/cirlce_tick.png'),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("BVN",
                              style: TextStyle(
                                  fontFamily: "DMSans",
                                  fontSize: 15.sp,
                                  color: const Color(0xFF163B50))),
                          Text('Use your existing account from another',
                              style: TextStyle(
                                  fontSize: 11.sp,
                                  fontFamily: 'DMSans',
                                  color: const Color.fromRGBO(0, 0, 0, 0.4))),
                          Text(' Bank to sign up',
                              style: TextStyle(
                                  fontSize: 11.sp,
                                  fontFamily: 'DMSans',
                                  color: const Color.fromRGBO(0, 0, 0, 0.4)))
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [Image.asset('assets/images/purple_arrow.png')],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    )));
  }
}
