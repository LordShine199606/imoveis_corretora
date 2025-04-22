import 'package:flutter/material.dart';

class DarkAndLightThemeController extends  ChangeNotifier{
  static DarkAndLightThemeController instaceDark = DarkAndLightThemeController();
     bool themeDark = false;
     DarkMyTheme(){

      themeDark = ! themeDark;
     notifyListeners();
    }

}