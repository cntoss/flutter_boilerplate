// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:google_fonts/google_fonts.dart';

// Project imports:
import 'package:flutter_boilerplate/core/constants/ui_colors.dart';
import 'package:flutter_boilerplate/core/constants/ui_colors_dark.dart';
import 'package:flutter_boilerplate/core/views/resource/style_manager.dart';

class AppTheme {
  static final ThemeData dark = ThemeData.dark().copyWith(
    textTheme: GoogleFonts.manropeTextTheme(),
    scaffoldBackgroundColor: UIColorsDark.backgroundPrimary,
  );

  static final ThemeData light = ThemeData.light().copyWith(
    scaffoldBackgroundColor: UIColors.backgroundPrimary,
    colorScheme: ColorScheme.fromSeed(seedColor: UIColors.blueDark),
    appBarTheme: AppBarTheme(
      backgroundColor: UIColors.appBarPrimary,
      elevation: 0,
      foregroundColor: UIColors.white,
      systemOverlayStyle: const SystemUiOverlayStyle(
        systemNavigationBarColor: UIColors.backgroundPrimary,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarColor: UIColors.appBarPrimary,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
      titleTextStyle: getSemiBoldStyle(
        fontSize: 17,
        color: UIColors.white,
      ),
    ),
    textTheme: GoogleFonts.manropeTextTheme(),
    inputDecorationTheme: InputDecorationTheme(
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      outlineBorder: const BorderSide(color: UIColors.inputBorderPrimary),
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: UIColors.inputBorderPrimary),
      ),
      errorBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(
          color: UIColors.inputError,
        ),
      ),
      disabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(
          color: UIColors.inputBorderDisabled,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 15.5,
      ),
      labelStyle: getRegularStyle(
        color: UIColors.textSecondary,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: const WidgetStatePropertyAll(Colors.blue),
        foregroundColor: const WidgetStatePropertyAll(UIColors.textLight),
        shape: const WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        minimumSize: const WidgetStatePropertyAll(Size(0, 56)),
        textStyle: WidgetStatePropertyAll(
          getSemiBoldStyle(
            color: UIColors.textLight,
            fontSize: 16,
          ),
        ),
        padding: const WidgetStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 16),
        ),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: UIColors.backgroundPrimary,
      selectedLabelStyle: getMediumStyle(
        fontSize: 11,
        color: UIColors.textPrimary,
      ),
      selectedItemColor: UIColors.blueDark,
      unselectedItemColor: UIColors.textSecondary,
      unselectedLabelStyle: getRegularStyle(
        fontSize: 11,
        color: UIColors.textSecondary,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: UIColors.greenPrimary,
      foregroundColor: UIColors.textLight,
      extendedTextStyle: getSemiBoldStyle(),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        shape: const WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
        ),
        foregroundColor: const WidgetStatePropertyAll(UIColors.blueLight),
        textStyle: WidgetStatePropertyAll(
          getSemiBoldStyle(
            fontSize: 16,
          ),
        ),
      ),
    ),
    listTileTheme: ListTileThemeData(
      leadingAndTrailingTextStyle: getSemiBoldStyle(
        color: UIColors.textPrimary,
      ),
      subtitleTextStyle: getRegularStyle(
        fontSize: 13,
        color: UIColors.textSecondary,
      ),
      titleTextStyle: getMediumStyle(
        color: UIColors.textPrimary,
      ),
      tileColor: UIColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
    ),
    dividerColor: UIColors.divider,
    popupMenuTheme: PopupMenuThemeData(
      position: PopupMenuPosition.under,
      color: UIColors.backgroundPrimary,
      surfaceTintColor: UIColors.backgroundPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: UIColors.popupMenuBorder),
      ),
      textStyle: getMediumStyle(
        color: UIColors.textPrimary,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        side: const WidgetStatePropertyAll(
          BorderSide(
            color: UIColors.greenPrimary,
          ),
        ),
        shape: const WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
        ),
        minimumSize: const WidgetStatePropertyAll(Size(0, 56)),
        foregroundColor: const WidgetStatePropertyAll(UIColors.white),
        textStyle: WidgetStatePropertyAll(
          getSemiBoldStyle(
            fontSize: 16,
          ),
        ),
      ),
    ),
    toggleButtonsTheme: ToggleButtonsThemeData(
      color: UIColors.textPrimary,
      selectedColor: UIColors.textPrimary,
      fillColor: UIColors.white,
      borderColor: Colors.transparent,
      selectedBorderColor: UIColors.greenPrimary,
      borderRadius: BorderRadius.circular(10),
      textStyle: getSemiBoldStyle(),
    ),
    chipTheme: ChipThemeData(
      selectedColor: UIColors.white,
      showCheckmark: false,
      side: const BorderSide(color: UIColors.greenPrimary),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      labelStyle: getSemiBoldStyle(
        color: UIColors.textPrimary,
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: const WidgetStatePropertyAll(UIColors.white),
      fillColor: const WidgetStatePropertyAll(UIColors.blueLight),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    ),
  );
}
