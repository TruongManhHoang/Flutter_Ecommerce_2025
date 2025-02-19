import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_2025/utils/theme/custom_themes/appbar_theme.dart';
import 'package:flutter_ecommerce_2025/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:flutter_ecommerce_2025/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:flutter_ecommerce_2025/utils/theme/custom_themes/chip_theme.dart';
import 'package:flutter_ecommerce_2025/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:flutter_ecommerce_2025/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:flutter_ecommerce_2025/utils/theme/custom_themes/text_field_theme.dart';
import 'package:flutter_ecommerce_2025/utils/theme/custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TTextTheme.lightTextTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
      chipTheme: TChipTheme.lightChipTheme,
      appBarTheme: TAppBarTheme.lightAppBarTheme,
      checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
      bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
      inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme);
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TTextTheme.darkTextTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      chipTheme: TChipTheme.darkChipTheme,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
      inputDecorationTheme: TTextFieldTheme.darkInputDecorationTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme);
}
