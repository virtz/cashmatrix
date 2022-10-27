// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'dart:developer';

// import 'package:auto_route/auto_route.dart';
import 'package:cashmatrix/presentation/routes/app_router.gr.dart';
import 'package:stacked/stacked.dart';
import 'package:injectable/injectable.dart';

import '../../injection.dart';

@injectable
class SplashScreenViewModel extends BaseViewModel {
  // final _appRouter = getIt<AppRouter>();
  void navigateToNext() {
    Timer(const Duration(seconds: 5), () {
      log('method was called');
      getIt<AppRouter>().push(const WalkThroughHome());
    });
  }
}
