import 'package:cashmatrix/injection.dart';
import 'package:cashmatrix/presentation/core/app_widget.dart';
import 'package:flutter/material.dart';

void main() {
  configureInjection();
  runApp( AppWidget());
}
