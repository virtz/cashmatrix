// ignore_for_file: depend_on_referenced_packages

import 'package:auto_route/auto_route.dart';
import 'package:cashmatrix/application/splash_screen/splash_screen_view_model.dart';
import 'package:cashmatrix/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../injection.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ViewModelBuilder<SplashScreenViewModel>.reactive(
      onModelReady: (h) {
        h.navigateToNext();
      },
      viewModelBuilder: () => getIt<SplashScreenViewModel>(),
      builder: (context, model, child) => Scaffold(
          backgroundColor: const Color(0xFFFFFFFF),
          body: SingleChildScrollView(
              child: InkWell(
            onTap: () {
              // model.navigateToNext();
              AutoRouter.of(context).push(const WalkThroughHome());
            },
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: size.height * 0.36),
                Center(
                  child: Image.asset('assets/images/splash_logo.png',
                      height: 185.h, width: 268.w),
                ),
                SizedBox(height: size.height * 0.3),
                Text("Powered by Assetmatrix MFB",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontFamily: 'Object-Sans',
                        color: const Color(0xFFEE8520),
                        fontWeight: FontWeight.w800)),
                SizedBox(height: size.height * 0.1),
              ],
            ),
          ))),
    );
  }
}
