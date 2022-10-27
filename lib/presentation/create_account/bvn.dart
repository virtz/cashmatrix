import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../general_widgets/custom_button.dart';
import '../routes/app_router.gr.dart';

class BvnPage extends StatelessWidget {
  const BvnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 79.h,
          ),
          Container(
            height: 63.h,
            color: const Color(0xFFF5F5F5),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0.w),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text('Cancel',
                        style: TextStyle(
                            fontFamily: "DMSans",
                            fontSize: 15.sp,
                            color: Theme.of(context).primaryColor)),
                  ),
                  Expanded(
                    flex: 3,
                    child: Center(
                      child: Text('Create Account',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontFamily: "DMSans",
                              fontSize: 17.sp,
                              color: const Color(0xFF163B50))),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 41.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0.w),
                  child: Transform.scale(
                    scale: 1.1,
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      'assets/images/main_logo.png',
                    ),
                  ),
                ),
                SizedBox(height: 43.h),
                Padding(
                  padding: EdgeInsets.only(left: 10.0.w),
                  child: Text('Please enter your BVN below',
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: const Color.fromRGBO(22, 59, 80, 0.63),
                          fontWeight: FontWeight.w400,
                          fontFamily: "DMSans")),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Container(
                  // height: 80.h,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFAFAFA),
                      border: Border.all(
                          width: 1.5, color: const Color(0xFFCECECE)),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'BVN',
                          style: TextStyle(
                            fontFamily: "DMSans",
                            color: const Color(0xFFA3A0C0),
                            fontSize: 15.sp,
                          ),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            // suffixIcon: Icon(Icons.edit_note),
                            border: InputBorder.none,
                            // hintText: 'location',
                            suffixIconColor: Colors.grey,
                            focusColor: Colors.grey,
                          ),
                          cursorColor: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                SizedBox(
                  height: 200.h,
                ),
                CustomButton(
                  'Continue',
                  height: 62.h,
                  fontSize: 19.sp,
                  onPressed: () {
                    AutoRouter.of(context).push(const PhonneNumberRoute());
                  },
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
