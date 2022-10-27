// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i19;

import '../contact/contact.dart' as _i18;
import '../create_account/bvn.dart' as _i6;
import '../create_account/create_account.dart' as _i4;
import '../create_account/create_account2.dart' as _i5;
import '../create_account/otp_page.dart' as _i8;
import '../create_account/phone_page.dart' as _i7;
import '../create_account/pin_screen.dart' as _i10;
import '../create_account/register.dart' as _i9;
import '../home/home.dart' as _i15;
import '../index/index.dart' as _i13;
import '../login/login.dart' as _i3;
import '../profile/profile.dart' as _i17;
import '../splash_screen/splash_screen.dart' as _i1;
import '../transactions/transaction.dart' as _i16;
import '../walk_through/walk_through_home.dart' as _i2;
import '../welcome/finger_print_page.dart' as _i12;
import '../welcome/welcome.dart' as _i11;

class AppRouter extends _i14.RootStackRouter {
  AppRouter([_i19.GlobalKey<_i19.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    WalkThroughHome.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.WalkThroughHome());
    },
    Login.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.Login());
    },
    CreatAccount.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.CreatAccount());
    },
    CreateAccount2.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.CreateAccount2());
    },
    BvnRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.BvnPage());
    },
    PhonneNumberRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.PhonneNumberPage());
    },
    OtpRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.OtpPage());
    },
    RegisterScreen.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.RegisterScreen());
    },
    PinScreen.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.PinScreen());
    },
    WelcomeScreen.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.WelcomeScreen());
    },
    FingerPrintRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.FingerPrintPage());
    },
    IndexScreen.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.IndexScreen());
    },
    HomeRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.EmptyRouterPage());
    },
    TransactionRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.EmptyRouterPage());
    },
    ProfileRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.EmptyRouterPage());
    },
    ContactRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.EmptyRouterPage());
    },
    HomeScreen.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.HomeScreen());
    },
    Transactions.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.Transactions());
    },
    ProfileScreen.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.ProfileScreen());
    },
    ContactScreen.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.ContactScreen());
    }
  };

  @override
  List<_i14.RouteConfig> get routes => [
        _i14.RouteConfig(SplashScreen.name, path: '/'),
        _i14.RouteConfig(WalkThroughHome.name, path: '/walk-through-home'),
        _i14.RouteConfig(Login.name, path: '/Login'),
        _i14.RouteConfig(CreatAccount.name, path: '/creat-account'),
        _i14.RouteConfig(CreateAccount2.name, path: '/create-account2'),
        _i14.RouteConfig(BvnRoute.name, path: '/bvn-page'),
        _i14.RouteConfig(PhonneNumberRoute.name, path: '/phonne-number-page'),
        _i14.RouteConfig(OtpRoute.name, path: '/otp-page'),
        _i14.RouteConfig(RegisterScreen.name, path: '/register-screen'),
        _i14.RouteConfig(PinScreen.name, path: '/pin-screen'),
        _i14.RouteConfig(WelcomeScreen.name, path: '/welcome-screen'),
        _i14.RouteConfig(FingerPrintRoute.name, path: '/finger-print-page'),
        _i14.RouteConfig(IndexScreen.name, path: '/index-screen', children: [
          _i14.RouteConfig(HomeRoute.name,
              path: 'home',
              parent: IndexScreen.name,
              children: [
                _i14.RouteConfig(HomeScreen.name,
                    path: '', parent: HomeRoute.name)
              ]),
          _i14.RouteConfig(TransactionRoute.name,
              path: 'transactions',
              parent: IndexScreen.name,
              children: [
                _i14.RouteConfig(Transactions.name,
                    path: '', parent: TransactionRoute.name)
              ]),
          _i14.RouteConfig(ProfileRoute.name,
              path: 'profile',
              parent: IndexScreen.name,
              children: [
                _i14.RouteConfig(ProfileScreen.name,
                    path: '', parent: ProfileRoute.name)
              ]),
          _i14.RouteConfig(ContactRoute.name,
              path: 'contact',
              parent: IndexScreen.name,
              children: [
                _i14.RouteConfig(ContactScreen.name,
                    path: '', parent: ContactRoute.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i14.PageRouteInfo<void> {
  const SplashScreen() : super(SplashScreen.name, path: '/');

  static const String name = 'SplashScreen';
}

/// generated route for
/// [_i2.WalkThroughHome]
class WalkThroughHome extends _i14.PageRouteInfo<void> {
  const WalkThroughHome()
      : super(WalkThroughHome.name, path: '/walk-through-home');

  static const String name = 'WalkThroughHome';
}

/// generated route for
/// [_i3.Login]
class Login extends _i14.PageRouteInfo<void> {
  const Login() : super(Login.name, path: '/Login');

  static const String name = 'Login';
}

/// generated route for
/// [_i4.CreatAccount]
class CreatAccount extends _i14.PageRouteInfo<void> {
  const CreatAccount() : super(CreatAccount.name, path: '/creat-account');

  static const String name = 'CreatAccount';
}

/// generated route for
/// [_i5.CreateAccount2]
class CreateAccount2 extends _i14.PageRouteInfo<void> {
  const CreateAccount2() : super(CreateAccount2.name, path: '/create-account2');

  static const String name = 'CreateAccount2';
}

/// generated route for
/// [_i6.BvnPage]
class BvnRoute extends _i14.PageRouteInfo<void> {
  const BvnRoute() : super(BvnRoute.name, path: '/bvn-page');

  static const String name = 'BvnRoute';
}

/// generated route for
/// [_i7.PhonneNumberPage]
class PhonneNumberRoute extends _i14.PageRouteInfo<void> {
  const PhonneNumberRoute()
      : super(PhonneNumberRoute.name, path: '/phonne-number-page');

  static const String name = 'PhonneNumberRoute';
}

/// generated route for
/// [_i8.OtpPage]
class OtpRoute extends _i14.PageRouteInfo<void> {
  const OtpRoute() : super(OtpRoute.name, path: '/otp-page');

  static const String name = 'OtpRoute';
}

/// generated route for
/// [_i9.RegisterScreen]
class RegisterScreen extends _i14.PageRouteInfo<void> {
  const RegisterScreen() : super(RegisterScreen.name, path: '/register-screen');

  static const String name = 'RegisterScreen';
}

/// generated route for
/// [_i10.PinScreen]
class PinScreen extends _i14.PageRouteInfo<void> {
  const PinScreen() : super(PinScreen.name, path: '/pin-screen');

  static const String name = 'PinScreen';
}

/// generated route for
/// [_i11.WelcomeScreen]
class WelcomeScreen extends _i14.PageRouteInfo<void> {
  const WelcomeScreen() : super(WelcomeScreen.name, path: '/welcome-screen');

  static const String name = 'WelcomeScreen';
}

/// generated route for
/// [_i12.FingerPrintPage]
class FingerPrintRoute extends _i14.PageRouteInfo<void> {
  const FingerPrintRoute()
      : super(FingerPrintRoute.name, path: '/finger-print-page');

  static const String name = 'FingerPrintRoute';
}

/// generated route for
/// [_i13.IndexScreen]
class IndexScreen extends _i14.PageRouteInfo<void> {
  const IndexScreen({List<_i14.PageRouteInfo>? children})
      : super(IndexScreen.name,
            path: '/index-screen', initialChildren: children);

  static const String name = 'IndexScreen';
}

/// generated route for
/// [_i14.EmptyRouterPage]
class HomeRoute extends _i14.PageRouteInfo<void> {
  const HomeRoute({List<_i14.PageRouteInfo>? children})
      : super(HomeRoute.name, path: 'home', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i14.EmptyRouterPage]
class TransactionRoute extends _i14.PageRouteInfo<void> {
  const TransactionRoute({List<_i14.PageRouteInfo>? children})
      : super(TransactionRoute.name,
            path: 'transactions', initialChildren: children);

  static const String name = 'TransactionRoute';
}

/// generated route for
/// [_i14.EmptyRouterPage]
class ProfileRoute extends _i14.PageRouteInfo<void> {
  const ProfileRoute({List<_i14.PageRouteInfo>? children})
      : super(ProfileRoute.name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i14.EmptyRouterPage]
class ContactRoute extends _i14.PageRouteInfo<void> {
  const ContactRoute({List<_i14.PageRouteInfo>? children})
      : super(ContactRoute.name, path: 'contact', initialChildren: children);

  static const String name = 'ContactRoute';
}

/// generated route for
/// [_i15.HomeScreen]
class HomeScreen extends _i14.PageRouteInfo<void> {
  const HomeScreen() : super(HomeScreen.name, path: '');

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i16.Transactions]
class Transactions extends _i14.PageRouteInfo<void> {
  const Transactions() : super(Transactions.name, path: '');

  static const String name = 'Transactions';
}

/// generated route for
/// [_i17.ProfileScreen]
class ProfileScreen extends _i14.PageRouteInfo<void> {
  const ProfileScreen() : super(ProfileScreen.name, path: '');

  static const String name = 'ProfileScreen';
}

/// generated route for
/// [_i18.ContactScreen]
class ContactScreen extends _i14.PageRouteInfo<void> {
  const ContactScreen() : super(ContactScreen.name, path: '');

  static const String name = 'ContactScreen';
}
