// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'package:injectable/injectable.dart';

// import '../../injection.dart';

@injectable
class CreateAccountViewModel extends BaseViewModel {
  bool obscurePassword = true;
  bool obscureRepeatPassword = true;

  togglePasswordVisibilty() {
    obscurePassword = !obscurePassword;
    notifyListeners();
  }

  toggleObscurePasswordVisibilty() {
    obscureRepeatPassword = !obscureRepeatPassword;
    notifyListeners();
  }
  
    showDialogue<T>(Widget child, context) {
    showDialog(context: context, builder: (context) => child);
  }
}
