
import 'package:flutter/material.dart';
import 'color_manager.dart';
import 'fonts_manager.dart';
import 'styles_manager.dart';
import 'values_manager.dart';

ThemeData getAppTheme(){
  return ThemeData(
    // colors
    primaryColor: ColorManager.orange,
    primaryColorLight: ColorManager.lightGrey,

    // card view theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      elevation: AppSize.s4,
      shadowColor: ColorManager.lightGrey
    ),

    //App bar Theme
    appBarTheme: AppBarTheme(

      centerTitle: true,
      color: ColorManager.darkGrey,
      elevation: AppSize.s1_5,
      titleTextStyle: getRegularTextStyle(fontSize: FontSize.s16,color: ColorManager.white)
    ),
    // Button Theme

    //elevated button theme data

    // text theme
    textTheme: TextTheme(
        displayLarge: getBoldTextStyle(color: ColorManager.black,fontSize: FontSize.s30),
        displayMedium: getRegularTextStyle(color: ColorManager.black,fontSize: FontSize.s22),
      titleMedium: getRegularTextStyle(color: ColorManager.lightGrey,fontSize: FontSize.s22),
      headlineMedium: getBoldTextStyle(color: ColorManager.black,fontSize: FontSize.s22),
      bodySmall: getRegularTextStyle(color: ColorManager.lightGrey,fontSize: FontSize.s16),
      headlineSmall: getRegularTextStyle(color: ColorManager.orange,fontSize: FontSize.s16),
      bodyMedium: getRegularTextStyle(color: ColorManager.lightGrey,fontSize: FontSize.s16),

    ),
    // input decoration theme
    inputDecorationTheme: InputDecorationTheme(

      fillColor: ColorManager.darkGrey,
      filled: true,
      isCollapsed: false,
      contentPadding: const EdgeInsets.symmetric(horizontal:AppPading.p22),
      hintStyle: getRegularTextStyle(color: ColorManager.lightGrey,fontSize: FontSize.s22),
      labelStyle: getItalicTextStyle(color: ColorManager.lightGrey,fontSize: FontSize.s14),

      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.darkGrey,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s30))
      ),
        // focused border side
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color:ColorManager.darkGrey,
              width: AppSize.s1_5,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s30))
        ),
      // error border side
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.darkGrey,
              width: AppSize.s1_5,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s30))
        ),
      // focused error border
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.darkGrey,
              width: AppSize.s1_5,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s30))
        )
    )
  );
}
