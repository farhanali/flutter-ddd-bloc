import 'package:flutter/material.dart';

class AppTheme {
  Color primaryColor = Colors.green[800];
  Color accentColor = Colors.blueAccent;

  ThemeData get base {
    return ThemeData.light().copyWith(
      primaryColor: primaryColor,
      accentColor: accentColor,
      appBarTheme: appBar,
      floatingActionButtonTheme: fab,
      inputDecorationTheme: inputDecor,
      buttonTheme: button,
    );
  }

  AppBarTheme get appBar => ThemeData.light().appBarTheme.copyWith(
        brightness: Brightness.dark,
        color: Colors.transparent,
        elevation: 0,
        iconTheme: ThemeData.light().iconTheme,
      );

  FloatingActionButtonThemeData get fab => FloatingActionButtonThemeData(
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
      );

  ButtonThemeData get button => ThemeData.light().buttonTheme.copyWith(
        padding: const EdgeInsets.all(12),
        buttonColor: Colors.black54,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      );

  InputDecorationTheme get inputDecor => InputDecorationTheme(
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      );
}
