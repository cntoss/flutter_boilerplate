// Flutter imports:
import 'package:flutter/material.dart';

// implement it as an interface with getters.
// Also put a palette name to optimize the AppState rebuild

/// This class is stores the color constants that is used through out the app
/// or within the core components.
///
/// Constants related with specific feature should go inside the feature
/// and should not be placed here.
class UIColors {
  /// Alert yello
  ///  ```
  /// Color(0xFFFFFFFF)
  /// ```
  static const Color alertYellow = Color(0xFFF3C523);

  /// Secondary Appbar Background
  ///  ```
  /// Color(0xFFFFFFFF)
  /// ```
  static const Color appBarPrimary = Color(0xff8494b0);

  /// Primary Appbar Background
  ///  ```
  /// Color(0xFF3C4687)
  /// ```
  static const Color appBarSecondary = Color(0xFF3C4687);

  /// Primary Scaffold Color
  ///  ```
  /// Color(0xffFFFFFF)
  /// ```
  static const Color backgroundPrimary = Color(
    0xffF8EEEC,
  );

  /// Secondary Scaffold Color
  ///  ```
  /// Color(0xff3C4687)
  /// ```
  static const Color backgroundSecondary = Color(0xff3C4687);

  /// White Color
  ///  ```
  /// Color(0xFFFFFFFF)
  /// ```
  static const Color black = Color(0xFF000000);

  /// Primary blue used in backgrounds, appbar, buttons
  ///  ```
  /// Color(0xff4F5AA3)
  /// ```
  static const Color blueDark = Color(0xff4F5AA3);

  /// Primary blue used in backgrounds, appbar, buttons
  ///  ```
  /// Color(0xff2E9BFF)
  /// ```
  static const Color blueLight = Color(0xff478DF6);

  /// Alternate blue color used in switch buttons
  ///  ```
  /// Color(0xFF576CF2)
  /// ```
  static const Color blueLightAlt = Color(0xFF576CF2);

  ///  Blue color used in text buttons
  ///  ```
  /// Color(0xFF2C78EA)
  /// ```
  static const Color blueTextButtonColor = Color(0xFF2C78EA);

  /// Creammy
  ///  ```
  /// Color(0xFFF5F5F5)
  /// ```
  static const Color creammy = Color(0xFFF5F5F5);

  /// Divider color
  ///  ```
  /// Color(0xFFD1D1D1)
  /// ```
  static const Color divider = Color(0xFFE6E6E6);

  /// Background color for the children of an expansion tile
  ///  ```
  /// Color(0xFFFFFFFF)
  /// ```
  static const Color expansionTileContent = Color(0xFFF0F6FF);

  /// Primary Green for backgrounds, buttons
  ///  ```
  /// Color(0xff31C64F)
  /// ```
  static const Color greenPrimary = Color(0xff31C64F);

  /// Primary Green for text
  /// Color(0xFF8C9791)
  /// ```
  static const Color greenTextColor = Color(0xFF8C9791);

  /// Input border for color background
  ///  ```
  /// Color(0xFF6F6F6F)
  /// ```
  static const Color inputBorderDisabled = Color(0xFF6F6F6F);

  /// Input border for white background
  ///  ```
  /// Color(0xFFDBDBDB)
  /// ```
  static const Color inputBorderPrimary = Color(0xFFDBDBDB);

  /// Input border for color background
  ///  ```
  /// Color(0xFFA8CBFF)
  /// ```
  static const Color inputBorderSecondary = Color(0xFFA8CBFF);

  /// Error Color
  ///  ```
  /// Color(0xFFF26B6B)
  /// ```
  static const Color inputError = Color(0xFFF26B6B);

  /// Blue like logo color
  ///  ```
  /// Color(0xFF415A80)
  /// ```
  static const Color logoColor = Color(0xFF415A80);

  /// Grey like color
  ///  ```
  /// Color(0xFFABABAB)
  /// ```
  static const Color menuIconCOlor = Color(0xFFABABAB);

  /// Material Popup Menu border color
  ///  ```
  /// Color(0xFFD1D1D1)
  /// ```
  static const Color popupMenuBorder = Color(0xFFD1D1D1);

  /// Black text color.
  ///  ```
  /// Color(0xFFFFFFFF)
  /// ```
  static const Color textBlack = Color(0xFF060606);

  /// Light color used in color buttons etc.
  ///  ```
  /// Color(0xFFFFFFFF)
  /// ```
  static const Color textLight = Color(0xFFFFFFFF);

  /// Normal text black color.
  ///  ```
  /// Color(0xFF282B29)
  /// ```
  static const Color textNormalBlack = Color(0xFF282B29);

  /// Primary color used in input field text, app text etc.
  /// ```
  /// Color(0xFF3F3F3F)
  /// ```
  static const Color textPrimary = Color(0xFF3F3F3F);

  /// Secondary color used in labels, disabled text etc.
  /// ```
  /// Color(0xFF6F6F6F)
  /// ```
  static const Color textSecondary = Color(0xFF6F6F6F);

  /// Tertiary text color used in dark background
  ///  ```
  /// Color(0xFF75D6FF)
  /// ```
  static const Color textTertiary = Color(0xFF75D6FF);

  /// Alternate tertiary text color used in light background
  ///  ```
  /// Color(0xFF576CF2)
  /// ```
  static const Color textTertiaryAlt = Color(0xFF576CF2);

  /// White Color
  ///  ```
  /// Color(0xFFFFFFFF)
  /// ```
  static const Color white = Color(0xFFFFFFFF);
  static const Color listTileOddSnColor = Color.fromRGBO(233, 233, 233, 1);
  static const Color listTileOddContentColor = Color.fromRGBO(241, 241, 241, 1);
  static const Color lightText = Color.fromRGBO(225, 227, 232, 1);
}
