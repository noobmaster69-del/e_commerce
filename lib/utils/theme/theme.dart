import 'package:e_commerce/utils/theme/custom_themes/outline_button_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

import 'custom_themes/appbar_theme.dart';
import 'custom_themes/bottom_sheet_them.dart';
import 'custom_themes/checkbox_theme.dart';
import 'custom_themes/chip_theme.dart';
import 'custom_themes/elevated_button_theme.dart';

import 'custom_themes/text_field_theme.dart';

class EAppTheme {
  EAppTheme._();

  ///Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: ETextTheme.lightTextTheme,
    chipTheme: EchipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: EAppbarTheme.lightAppBarTheme,
    checkboxTheme: ECheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: EBottomSheetTheme.lightBottomSheet,
    elevatedButtonTheme: EElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: EOutlineButtonTheme.lightOutlinebuttonTheme,
    inputDecorationTheme: ETextFormFieldTheme.lightInputDecorationTheme,
  );

  ///Light Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: ETextTheme.darkTextTheme,
    chipTheme: EchipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: EAppbarTheme.darkAppBarTheme,
    checkboxTheme: ECheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: EBottomSheetTheme.darkBottomSheet,
    elevatedButtonTheme: EElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: ETextFormFieldTheme.darkInputDecorationTheme,
    outlinedButtonTheme: EOutlineButtonTheme.darkOutlinebuttonTheme,
  );
}
