import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'modules/app/app_widget.dart';
import 'modules/app/injection.dart';

void main() {
  initInjection(Environment.dev);
  runApp(AppWidget());
}
