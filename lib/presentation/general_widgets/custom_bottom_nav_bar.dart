import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavItem extends StatefulWidget {
  final String? icon;
  final String? title;
  final String? iconActive;
  final bool isSelected;
  final Function? onTap;
  const CustomBottomNavItem(
      {
      // @required this.title,
      Key? key,
      @required this.icon,
      @required this.iconActive,
      this.isSelected = false,
      @required this.onTap,
      this.title})
      : super(key: key);

  @override
  _CustomBottomNavItemState createState() => _CustomBottomNavItemState();
}

class _CustomBottomNavItemState extends State<CustomBottomNavItem> {
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return InkWell(
        onTap: () {
          widget.onTap!();
        },
        child: SizedBox(
          height: 60.h,
          // width: size.width / 3.4,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //!comeback to uncomment
                // widget.isSelected
                // ?
                SizedBox(
                  height: 30.h,
                  width: 30.w,
                  child: Image.asset(
                    widget.iconActive!,
                    color: Theme.of(context).primaryColor,
                    fit: BoxFit.contain,
                  ),
                ),
                // : SizedBox(
                //     height: 30.h,
                //     width: 30.w,
                //     child: Image.asset(
                //       widget.icon!,
                //       fit: BoxFit.contain,
                //       color: Theme.of(context).colorScheme.secondary,
                //     ),
                //   ),
                SizedBox(height: 4.h),
                Text(
                  widget.title ?? "",
                  style: TextStyle(
                      color: const Color(0xFF163B50),
                      fontWeight: widget.isSelected
                          ? FontWeight.w600
                          : FontWeight.normal,
                      fontSize: 13.0.sp),
                )
              ],
            ),
          ),
        ));
  }
}
