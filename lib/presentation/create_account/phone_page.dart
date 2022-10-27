import 'package:auto_route/auto_route.dart';
import 'package:cashmatrix/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../general_widgets/custom_button.dart';

class PhonneNumberPage extends StatelessWidget {
  const PhonneNumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Image.asset(
                              "assets/images/back_arrow_orange.png")),
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
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mobile number',
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
                  // SizedBox(
                  //   height: 32.h,
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Transform.scale(
                        scale: 1.2,
                        child: Theme(
                          data: Theme.of(context).copyWith(
                              unselectedWidgetColor: Colors.grey.shade400),
                          child: Radio(
                              // focusColor: const Color(0xFFF7F7F7),
                              value: "no",
                              groupValue: "YES",
                              onChanged: (val) {}),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 8.0.w, horizontal: 15.w),
                        child: Text('This is my BVN-linked phone number',
                            style: TextStyle(
                                fontSize: 12.5.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(22, 59, 80, 0.63))),
                      )
                    ],
                  ),
                  SizedBox(height: 5.h),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Please enter your date of birth',
                          style: TextStyle(
                              color: const Color.fromRGBO(22, 59, 80, 0.63),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        Theme(
                          data: ThemeData(
                              primarySwatch: Colors.grey,
                              primaryColor:
                                  const Color.fromRGBO(0, 0, 0, 0.27)),
                          child: const TextField(
                            decoration: InputDecoration(
                              // label:
                              // suffixIcon: Icon(Icons.edit_note),
                              // border: OutlineInputBorder(
                              //   borderSide: BorderSide()
                              // ),
                              hintText: 'DD/MM/YYYY',
                              suffixIconColor: Colors.grey,
                              focusColor: Colors.grey,
                            ),
                            cursorColor: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 120.h,
                  ),
                  CustomButton(
                    'Continue',
                    height: 62.h,
                    fontSize: 19.sp,
                    onPressed: () {
                      AutoRouter.of(context).push(const OtpRoute());
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
