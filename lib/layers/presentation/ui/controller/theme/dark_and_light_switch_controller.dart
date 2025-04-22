import 'package:flutter/material.dart';

class DarkAndLightThemeController extends  ChangeNotifier{
     bool themeDark = false;

    void DarkMyTheme(){

      themeDark = ! themeDark;
     notifyListeners();
    }

}