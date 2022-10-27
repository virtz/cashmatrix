import 'package:auto_route/auto_route.dart';
import 'package:cashmatrix/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../general_widgets/custom_bottom_nav_bar.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({Key? key}) : super(key: key);

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      // backgroundColor: Colors.black,
      // appBarBuilder: (_, tabsRouter) => AppBar(),
      routes: const [
        // gr.CategoryRoutes(),
        // gr.BrowseRoutes(),
        // gr.ProfileRouter(),
        // gr.SpecialCategoryRoutes(),
        // gr.TipsRouter()
        HomeRoute(),
        TransactionRoute(),
        ProfileRoute(),
        ContactRoute(),
      ],
      // body: IndexedStack(index: model.currentTabIndex, children: _children),
      bottomNavigationBuilder: (context, tabsRouter) => SizedBox(
          height: 90.h,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0.w),
                child: const Divider(
                  color: Color(0xFFD9D9D9),
                  thickness: 1.0,
                ),
              ),
              Container(
                color: Colors.white.withOpacity(0.4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomBottomNavItem(
                      title: "Home",
                      icon: 'assets/images/home_icon.png',
                      iconActive: 'assets/images/home_icon.png',
                      isSelected: tabsRouter.activeIndex == 0,
                      onTap: () {
                        // model.incrementHomeCounter();
                        // model.reduceBrowseCounter();
                        // model.reduceSpecialCounter();
                        // model.reduceTipCounter();
                        // if (model.homeCounter > 1) {
                        //   AutoRouter.of(context).navigate(
                        //       const gr.CategoryRoutes(
                        //           children: [gr.StggerdView()]));
                        // }
                        tabsRouter.setActiveIndex(0);
                      },
                    ),
                    CustomBottomNavItem(
                      title: "Transaction",
                      icon: 'assets/images/transaction_icon.png',
                      iconActive: 'assets/images/transaction_icon.png',
                      isSelected: tabsRouter.activeIndex == 1,
                      onTap: () {
                        tabsRouter.setActiveIndex(1);
                      },
                    ),
                    CustomBottomNavItem(
                      title: "Profile",
                      icon: 'assets/images/profile_icon.png',
                      iconActive: 'assets/images/profile_icon.png',
                      isSelected: tabsRouter.activeIndex == 2,
                      onTap: () {
                        tabsRouter.setActiveIndex(2);
                      },
                    ),
                    CustomBottomNavItem(
                      title: "Contact",
                      icon: 'assets/images/contact_icon.png',
                      iconActive: 'assets/images/contact_icon.png',
                      isSelected: tabsRouter.activeIndex == 3,
                      onTap: () {
                        // model.incrementSpecialCounter();
                        // model.reduceHomeCounter();
                        // model.reduceTipCounter();
                        // model.reduceBrowseCounter();
                        // // model.reduceSpecialCounter();
                        // if (model.specialCounter > 1) {
                        //   AutoRouter.of(context).navigate(
                        //     const gr.SpecialCategoryRoutes(
                        //         children: [
                        //           gr.SpecialCategoryRoute()
                        //         ]),
                        //   );
                        // }
                        tabsRouter.setActiveIndex(3);
                      },
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
