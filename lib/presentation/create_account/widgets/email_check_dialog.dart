import 'package:auto_route/auto_route.dart';
import 'package:cashmatrix/presentation/general_widgets/custom_button.dart';
import 'package:cashmatrix/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailCheckDialo extends StatefulWidget {
  const EmailCheckDialo({Key? key}) : super(key: key);

  @override
  State<EmailCheckDialo> createState() => _EmailCheckDialoState();
}

class _EmailCheckDialoState extends State<EmailCheckDialo> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        insetPadding: EdgeInsets.symmetric(horizontal: 20.w),
        elevation: 2,
        child: SizedBox(
            height: 300.h,
            width: size.width,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0.w, vertical: 20.w),
              child: Column(
                children: [
                  Text.rich(TextSpan(
                      text:
                          "Before proceeding with the registration, make sure that the email you entered ",
                      style: TextStyle(
                        fontFamily: "ObjectSans",
                        fontSize: 20.sp,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: "seunolalani@grubies.ng",
                          style: TextStyle(
                            fontFamily: "ObjectSans",
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w800,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        const TextSpan(
                          text: " is correct.",
                        )
                      ])),
                  CustomButton(
                    'Continue',
                    fontSize: 19.sp,
                    onPressed: () {
                      Navigator.of(context).pop();
                      AutoRouter.of(context).push(const PinScreen());
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Cancel",
                        style: TextStyle(
                            fontSize: 19.sp,
                            color: Theme.of(context).primaryColor)),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
