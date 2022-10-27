// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

import 'package:auto_route/auto_route.dart';
import 'package:cashmatrix/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../general_widgets/custom_button.dart';

class PinScreen extends StatelessWidget {
  const PinScreen({Key? key}) : super(key: key);

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
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child:
                            Image.asset("assets/images/back_arrow_orange.png")),
                  ),
                  Expanded(
                    flex: 2,
                    child: Center(
                      child: Text('Validate',
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
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0.w),
                    child: Text('Confirm your 4-digit pin',
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: const Color.fromRGBO(22, 59, 80, 0.63),
                            fontWeight: FontWeight.w400,
                            fontFamily: "DMSans")),
                  ),
                ),
                SizedBox(height: 7.h),
                PinCodeTextField(
                  appContext: context,
                  length: 4,

                  // backgroundColor:Colors.grey.shade200,
                  onChanged: (String value) {},
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8),
                    fieldHeight: 73.h,
                    fieldWidth: 73.h,
                    borderWidth: 2.h,

                    fieldOuterPadding: const EdgeInsets.all(4),
                    activeColor: Colors.transparent,
                    activeFillColor: Colors.grey.shade200,
                    inactiveColor: Colors.transparent,
                    inactiveFillColor: Colors.grey.shade200,
                    // selectedColor: LColors.primaryColors,
                    selectedFillColor: Colors.white,
                  ),
                  // controller: codeCtrl,
                  onCompleted: (value) {},

                  enableActiveFill: true,

                  textStyle: Theme.of(context).textTheme.headline1?.copyWith(
                        // color: LColors.primaryColors,
                        fontSize: 26.sp,
                      ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Center(
                  child: Text('Retype pin',
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontFamily: "DMSans",
                          color: Theme.of(context).primaryColor)),
                ),
                SizedBox(
                  height: 160.h,
                ),
                CustomButton(
                  'Continue',
                  height: 62.h,
                  fontSize: 19.sp,
                  onPressed: () {
                    AutoRouter.of(context).push(const WelcomeScreen());
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
