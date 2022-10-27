// ignore_for_file: depend_on_referenced_packages

import 'package:auto_route/auto_route.dart';
import 'package:cashmatrix/presentation/contact/contact.dart';
import 'package:injectable/injectable.dart';
import '../create_account/bvn.dart';
import '../create_account/create_account.dart';
import '../create_account/create_account2.dart';
import '../create_account/otp_page.dart';
import '../create_account/phone_page.dart';
import '../create_account/pin_screen.dart';
import '../create_account/register.dart';
import '../home/home.dart';
import '../index/index.dart';
import '../login/login.dart';
import '../profile/profile.dart';
import '../splash_screen/splash_screen.dart';
import '../transactions/transaction.dart';
import '../walk_through/walk_through_home.dart';
import '../welcome/finger_print_page.dart';
import '../welcome/welcome.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(page: SplashScreen, initial: true),
  AutoRoute(
    page: WalkThroughHome,
  ),
  AutoRoute(page: Login),
  AutoRoute(page: CreatAccount),
  AutoRoute(page: CreateAccount2),
  AutoRoute(page: BvnPage),
  AutoRoute(page: PhonneNumberPage),
  AutoRoute(page: OtpPage),
  AutoRoute(page: RegisterScreen),
  AutoRoute(page: PinScreen),
  AutoRoute(page: WelcomeScreen),
  AutoRoute(page: FingerPrintPage),
  AutoRoute(page: IndexScreen, children: [
    AutoRoute(path: 'home', name: 'HomeRoute', page: EmptyRouterPage,
        // maintainState: false,
        children: [
          AutoRoute(
            path: "",
            page: HomeScreen,
            // maintainState: true,
          ),
        ]),
    AutoRoute(
        path: "transactions",
        name: "TransactionRoute",
        page: EmptyRouterPage,
        children: [
          AutoRoute(
            path: "",
            page: Transactions,
          )
        ]),
    AutoRoute(
        path: "profile",
        name: "ProfileRoute",
        page: EmptyRouterPage,
        children: [
          AutoRoute(
            path: "",
            page: ProfileScreen,
          )
        ]),
    AutoRoute(
        path: "contact",
        name: "ContactRoute",
        page: EmptyRouterPage,
        children: [
          AutoRoute(
            path: "",
            page: ContactScreen,
          )
        ]),
  ]),
])
@LazySingleton()
class $AppRouter {}
