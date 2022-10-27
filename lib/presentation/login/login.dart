import 'package:auto_route/auto_route.dart';
import 'package:cashmatrix/presentation/general_widgets/custom_button.dart';
import 'package:cashmatrix/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 150.h,
            ),
            Align(
              child: Transform.scale(
                scale: 1.3,
                child: Image.asset(
                  'assets/images/main_logo.png',
                ),
              ),
            ),
            SizedBox(
              height: 86.h,
            ),
            Text('Welcome',
                style: TextStyle(
                    fontSize: 35.sp,
                    fontFamily: "DMSans",
                    color: const Color(0xFF163B50),
                    fontWeight: FontWeight.w700)),
            SizedBox(
              height: 15.h,
            ),
            TextField(
              // maxLines: 2
              cursorColor: Theme.of(context).primaryColor,
              decoration: InputDecoration(
                filled: true,
                hintText: 'Email',
                // hintStyle: TextStyle(),
                fillColor: const Color.fromRGBO(238, 133, 32, 0.12),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.r),
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 1),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.r),
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.r),
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 1),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              height: 65.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                border: Border.all(color: Colors.transparent, width: 1),
              ),
              child: TextField(
                // maxLines: 2
                cursorColor: Theme.of(context).primaryColor,
                decoration: InputDecoration(
                    filled: true,
                    // hintText: 'Password',
                    labelText: 'Password',
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                        color: Color(0xFF163B50),
                        fontFamily: 'DMSans'),
                    // label: Container(
                    //     child: Text('Password',
                    //         style: TextStyle(
                    //             fontWeight: FontWeight.w400,
                    //             fontSize: 16.sp,
                    //             fontFamily: 'DMSans'))),
                    // hintStyle: TextStyle(),
                    fillColor: const Color.fromRGBO(247, 247, 247, 1),
                    enabledBorder: InputBorder.none,
                    // OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(15.r),
                    //   borderSide:
                    //       const BorderSide(color: Colors.transparent, width: 1),
                    // ),
                    border: InputBorder.none,
                    // focusedBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(15.r),
                    //   borderSide:
                    //       const BorderSide(color: Colors.transparent, width: 1),
                    // ),
                    suffix: Image.asset('assets/images/password_eye.png')),
              ),
            ),
            SizedBox(height: 14.h),
            Align(
              alignment: Alignment.centerRight,
              child: Text('Forget Password?',
                  style: TextStyle(
                      fontFamily: 'DMSans',
                      color: const Color(0xFFEE8520),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400)),
            ),
            SizedBox(height: 79.h),
            CustomButton(
              'Sign in My Account',
              fontSize: 16.sp,
              height: 62.sp,
              onPressed: () {
                AutoRouter.of(context).push(const CreatAccount());
              },
            ),
            SizedBox(height: 35.h),
            Text.rich(TextSpan(
                text: "Don’t have an account?",
                style:
                    TextStyle(fontSize: 17.sp, color: const Color(0xFF3A3757)),
                children: [
                  const TextSpan(text: "-"),
                  TextSpan(
                      text: 'Create Account',
                      style: TextStyle(color: Theme.of(context).primaryColor))
                ]))
          ],
        ),
      ),
    ));
  }
}
