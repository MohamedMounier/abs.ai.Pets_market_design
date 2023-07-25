

import 'package:flutter/material.dart';
import 'fonts_manager.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color,FontStyle fontStyle){
  return TextStyle(
      fontSize: fontSize,
      fontFamily: FontConstants.fontFamily,
      fontStyle: fontStyle,
      fontWeight: fontWeight
      ,color: color);
}
TextStyle getRegularTextStyle({double fontSize=FontSize.s12,required Color color}){
  return _getTextStyle(fontSize,
       FontManager.regularFontWeight,
      color,
  FontStyle.normal
  );
}
TextStyle getItalicTextStyle({double fontSize=FontSize.s12,required Color color}){
  return _getTextStyle(fontSize,
      FontManager.regularFontWeight,

      color,
      FontStyle.italic

  );
}
TextStyle getBoldItalicTextStyle({double fontSize=FontSize.s12,required Color color}){
  return _getTextStyle(fontSize,
      FontManager.boldFontWeight,
      color,
      FontStyle.italic,

  );
}

TextStyle getBoldTextStyle({double fontSize=FontSize.s12,required Color color}){
  return _getTextStyle(fontSize,
      FontManager.boldFontWeight,
      color,
      FontStyle.normal

  );
}