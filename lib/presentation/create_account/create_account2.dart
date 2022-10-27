import 'package:auto_route/auto_route.dart';
// import 'package:cashmatrix/presentation/create_account/bvn.dart';
import 'package:cashmatrix/presentation/general_widgets/custom_button.dart';
import 'package:cashmatrix/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateAccount2 extends StatelessWidget {
  const CreateAccount2({Key? key}) : super(key: key);

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
            color: Color(0xFFF5F5F5),
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
                    child: Text('Create Account',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: "DMSans",
                            fontSize: 17.sp,
                            color: const Color(0xFF163B50))),
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
                  child: Text('Please enter your bank details',
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: const Color.fromRGBO(22, 59, 80, 0.63),
                          fontWeight: FontWeight.w400,
                          fontFamily: "DMSans")),
                ),
                // Container(
                //   height: 70.h,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(15.r),
                //     border: Border.all(color: Colors.transparent, width: 1),
                //   ),
                //   child: Column(
                //     children: [
                //       Text('Account number',
                //           style: TextStyle(
                //               fontSize: 15.sp, fontWeight: FontWeight.w400)),
                //       TextField(
                //         // maxLines: 2
                //         cursorColor: Theme.of(context).primaryColor,
                //         decoration: InputDecoration(
                //             filled: true,
                //             // hintText: 'Password',
                //             // labelText: 'Password',
                //             labelStyle: TextStyle(
                //                 fontWeight: FontWeight.w400,
                //                 fontSize: 16.sp,
                //                 color: Color(0xFF163B50),
                //                 fontFamily: 'DMSans'),
                //             // label: Container(
                //             //     child: Text('Password',
                //             //         style: TextStyle(
                //             //             fontWeight: FontWeight.w400,
                //             //             fontSize: 16.sp,
                //             //             fontFamily: 'DMSans'))),
                //             // hintStyle: TextStyle(),
                //             fillColor: const Color.fromRGBO(247, 247, 247, 1),
                //             enabledBorder: InputBorder.none,
                //             // OutlineInputBorder(
                //             //   borderRadius: BorderRadius.circular(15.r),
                //             //   borderSide:
                //             //       const BorderSide(color: Colors.transparent, width: 1),
                //             // ),
                //             border: InputBorder.none,
                //             // focusedBorder: OutlineInputBorder(
                //             //   borderRadius: BorderRadius.circular(15.r),
                //             //   borderSide:
                //             //       const BorderSide(color: Colors.transparent, width: 1),
                //             // ),
                //             suffix:
                //                 Image.asset('assets/images/password_eye.png')),
                //       ),
                //     ],
                //   ),
                // ),
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
                          'Account number',
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
                Container(
                  // height: 80.h,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFAFAFA),
                      border: Border.all(
                          width: 1.5, color: const Color(0xFFCECECE)),
                      borderRadius: BorderRadius.circular(20.0.r)),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bank name',
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

                SizedBox(height: 12.h),
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
                            primaryColor: const Color.fromRGBO(0, 0, 0, 0.27)),
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
                  height: 70.h,
                ),
                CustomButton(
                  'Continue',
                  height: 62.h,
                  fontSize: 19.sp,
                  onPressed: () {
                    AutoRouter.of(context).push(const BvnRoute());
                  },
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
