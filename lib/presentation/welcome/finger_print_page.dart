import 'package:auto_route/auto_route.dart';
import 'package:cashmatrix/presentation/general_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

import '../routes/app_router.gr.dart';

class FingerPrintPage extends StatefulWidget {
  const FingerPrintPage({Key? key}) : super(key: key);

  @override
  State<FingerPrintPage> createState() => _FingerPrintPageState();
}

class _FingerPrintPageState extends State<FingerPrintPage> {
  final LocalAuthentication auth = LocalAuthentication();
  _SupportState _supportState = _SupportState.unknown;
  bool? _canCheckBiometrics;
  List<BiometricType>? _availableBiometrics;
  String _authorized = 'Not Authorized';
  bool _isAuthenticating = false;
  @override
  void initState() {
    super.initState();
    auth.isDeviceSupported().then(
          (bool isSupported) => setState(() => _supportState = isSupported
              ? _SupportState.supported
              : _SupportState.unsupported),
        );
    // _authenticate();
    // _authenticateWithBiometrics();
  }

  Future<void> _checkBiometrics() async {
    late bool canCheckBiometrics;
    try {
      canCheckBiometrics = await auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      canCheckBiometrics = false;
      print(e);
    }
    if (!mounted) {
      return;
    }

    setState(() {
      _canCheckBiometrics = canCheckBiometrics;
    });
  }

  Future<void> _getAvailableBiometrics() async {
    late List<BiometricType> availableBiometrics;
    try {
      availableBiometrics = await auth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      availableBiometrics = <BiometricType>[];
      print(e);
    }
    if (!mounted) {
      return;
    }

    setState(() {
      _availableBiometrics = availableBiometrics;
    });
  }

  Future<void> _authenticate() async {
    bool authenticated = false;
    try {
      setState(() {
        _isAuthenticating = true;
        _authorized = 'Authenticating';
      });
      authenticated = await auth.authenticate(
        localizedReason: 'Let OS determine authentication method',
        options: const AuthenticationOptions(
          stickyAuth: true,
        ),
      );
      setState(() {
        _isAuthenticating = false;
      });
    } on PlatformException catch (e) {
      print(e);
      setState(() {
        _isAuthenticating = false;
        _authorized = 'Error - ${e.message}';
      });
      return;
    }
    if (!mounted) {
      return;
    }

    setState(
        () => _authorized = authenticated ? 'Authorized' : 'Not Authorized');
  }

  Future<void> _authenticateWithBiometrics() async {
    bool authenticated = false;
    try {
      setState(() {
        _isAuthenticating = true;
        _authorized = 'Authenticating';
      });
      authenticated = await auth.authenticate(
        localizedReason:
            'Scan your fingerprint (or face or whatever) to authenticate',
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: true,
        ),
      );
      setState(() {
        _isAuthenticating = false;
        _authorized = 'Authenticating';
      });
    } on PlatformException catch (e) {
      print(e);
      setState(() {
        _isAuthenticating = false;
        _authorized = 'Error - ${e.message}';
      });
      return;
    }
    if (!mounted) {
      return;
    }

    final String message = authenticated ? 'Authorized' : 'Not Authorized';
    setState(() {
      _authorized = message;
    });
    AutoRouter.of(context).push(const IndexScreen());
  }

  Future<void> _cancelAuthentication() async {
    await auth.stopAuthentication();
    setState(() => _isAuthenticating = false);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 98.h,
            ),
            Transform.scale(
              scale: 0.8,
              alignment: Alignment.topLeft,
              child: Image.asset(
                'assets/images/main_logo.png',
              ),
            ),
            SizedBox(
              height: 70.h,
            ),
            Align(
              child: Image.asset(
                'assets/images/finger_print_logo.png',
                height: 270.h,
                width: 270.w,
              ),
            ),
            SizedBox(height: 33.h),
            Center(
              child: Text("Do you want to log into your account with ",
                  // textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "DMSans",
                    color: const Color(0xFF163B50),
                    fontSize: 15.sp,
                  )),
            ),
            SizedBox(height: 5.h),
            Center(
              child: Text("Touch ID while signing in?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "DMSans",
                    color: const Color(0xFF163B50),
                    fontSize: 15.sp,
                  )),
            ),
            SizedBox(
              height: 23.h,
            ),
            CustomButton(
              "Yes, use Touch ID",
              onPressed: () {
                // AutoRouter.of(context).push(const IndexScreen());
                _authenticateWithBiometrics();
              },
              fontSize: 21.sp,
              height: 62.h,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 20.h),
            GestureDetector(
              onTap: () {
                AutoRouter.of(context).push(const IndexScreen());
              },
              child: Center(
                child: Text("No, thanks",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500)),
              ),
            ),
            // Expanded(
            SizedBox(height: size.height * 0.13),
            Center(
                child: Text("Terms and condition",
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF163B50)))),
            // )
          ],
        ),
      )),
    );
  }
}

enum _SupportState {
  unknown,
  supported,
  unsupported,
}
