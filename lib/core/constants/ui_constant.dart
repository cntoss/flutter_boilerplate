import 'package:flutter_boilerplate/core/constants/ui_colors.dart';
import 'package:flutter/material.dart';

class UIConstant {
  // Padding
  static const EdgeInsetsGeometry bodyPadding =
      EdgeInsets.symmetric(horizontal: 20);

  static const BorderRadius borderRadiusAll = BorderRadius.all(radiusCircular);
  static const BorderRadius borderRadiusBottom = BorderRadius.only(
    bottomLeft: radiusCircular,
    bottomRight: radiusCircular,
  );

  static const BorderRadius borderRadiusLeft = BorderRadius.only(
    topLeft: radiusCircular,
    bottomLeft: radiusCircular,
  );

  static const BorderRadius borderRadiusRight = BorderRadius.only(
    bottomRight: radiusCircular,
    topRight: radiusCircular,
  );

  static const BorderRadius borderRadiusTop = BorderRadius.only(
    topLeft: radiusCircular,
    topRight: radiusCircular,
  );

  static const RoundedRectangleBorder bottomSheetBorder =
      RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(
      top: Radius.circular(20),
    ),
  );

  static const ButtonStyle modalButtonStyle = ButtonStyle(
    backgroundColor: MaterialStatePropertyAll(
      UIColors.blueDark,
    ),
    elevation: MaterialStatePropertyAll(0),
    shape: MaterialStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    ),
  );

  static const ButtonStyle modalButtonStyleGreen = ButtonStyle(
    backgroundColor: MaterialStatePropertyAll(
      UIColors.greenPrimary,
    ),
    elevation: MaterialStatePropertyAll(0),
    shape: MaterialStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    ),
  );

  static const ButtonStyle outlineStyle = ButtonStyle(
    shape: MaterialStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    ),
    side: MaterialStatePropertyAll(
      BorderSide(
        color: UIColors.appBarSecondary,
      ),
    ),
  );

  InputBorder? outlineBoderSecondary(BuildContext context) =>
      Theme.of(context).inputDecorationTheme.enabledBorder?.copyWith(
            borderSide: const BorderSide(
              color: UIColors.inputBorderSecondary,
            ),
          );
  static const ButtonStyle elevatedDialogButtonStyle = ButtonStyle(
    shape: MaterialStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(dialogCircular),
      ),
    ),
  );
  static const ButtonStyle redElevatedDialogButtonStyle = ButtonStyle(
    backgroundColor: MaterialStatePropertyAll(Colors.red),
    shape: MaterialStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(dialogCircular),
      ),
    ),
  );

  static const ButtonStyle dialogOutlineStyle = ButtonStyle(
    shape: MaterialStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(dialogCircular),
      ),
    ),
    side: MaterialStatePropertyAll(
      BorderSide(
        color: UIColors.appBarSecondary,
      ),
    ),
  );

  static ButtonStyle whiteButtonStyle = ElevatedButton.styleFrom(
    disabledBackgroundColor: UIColors.backgroundPrimary,
    backgroundColor: UIColors.backgroundPrimary,
    foregroundColor: UIColors.textSecondary,
  );

  /// BorderRadius
  static const Radius radiusCircular = Radius.circular(25);
  static const Radius dialogCircular = Radius.circular(6);
}
