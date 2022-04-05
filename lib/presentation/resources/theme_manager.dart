import 'package:advanced_flutter/presentation/resources/color_manager.dart';
import 'package:advanced_flutter/presentation/resources/font_manager.dart';
import 'package:advanced_flutter/presentation/resources/styles_manager.dart';
import 'package:advanced_flutter/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    /// Main Colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.lightPrimary,
    // Ripple Effect Color

    /// CardView Theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),

    /// App Bar Theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.lightPrimary,
      titleTextStyle:
          getRegularStyle(fontSize: FontSize.s16, color: ColorManager.white),
    ),

    /// Button Theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.lightPrimary,
    ),

    // Elevated Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle:
            getRegularStyle(fontSize: FontSize.s17, color: ColorManager.white),
        primary: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),

    /// Text Theme
    textTheme: TextTheme(
      headline1: getSemiBoldStyle( //headline1
          color: ColorManager.darkGrey, fontSize: FontSize.s16),
      headline2: getRegularStyle( //headline1
          color: ColorManager.darkGrey, fontSize: FontSize.s14),
      subtitle1:
          getMediumStyle(color: ColorManager.liteGrey, fontSize: FontSize.s14),
      subtitle2:
      getMediumStyle(color: ColorManager.primary, fontSize: FontSize.s16),
      caption: getRegularStyle(color: ColorManager.grey1),
      bodyText1: getRegularStyle(color: ColorManager.grey),
    ),

    /// Input Decoration Theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      /// Content padding
      contentPadding: const EdgeInsets.all(AppPadding.p8),

      ///Hint Style
      hintStyle:
          getRegularStyle(color: ColorManager.grey, fontSize: FontSize.s14),

      /// Label Style
      labelStyle:
          getMediumStyle(color: ColorManager.grey, fontSize: FontSize.s14),

      /// Error Style
      errorStyle: getRegularStyle(color: ColorManager.error),

      /// Enabled Border Style (default)
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.grey,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8),
        ),
      ),

      /// Focused Border Style
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8),
        ),
      ),

      /// Error Border Style
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.error,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8),
        ),
      ),

      /// FocusedError Border Style
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8),
        ),
      ),
    ),
  );
}
