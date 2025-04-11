import 'package:flutter/material.dart';
import 'package:resept_app/theme.dart';

class ThemeProvider with ChangeNotifier{
  ThemeData _themeData = lighMode;
  ThemeData get themeData =>_themeData;
  
  set themeData (ThemeData themeData){
    _themeData = themeData;
    notifyListeners();
  } 
  void toggleTheme(){
    if (_themeData==lighMode) {
      themeData = darkhMode;
    }else{
      themeData=lighMode;
    }
  }
  double size = 25;
  void gosh(){
    size +=2;
  }
  void ayyr(){
    if(size >10){
      size -=2;
    }
  }
  String _currentLanguage = 'tm';
  final Map<String, Map<String, String>> _localizedValues = {
    'tm':{
      'Hawa':'Hawa',
      'Ýok': 'Ýok',
      'Paylaş':'Paylaş',
      'Sazlamalar': 'Sazlamalar',
      'Dilini Sayla':'Dilini Sayla',
      'Tema': 'Tema',
      'Biz Hakynda': "Biz Hakynda",
      'Çykalga':'Çykalga',
      'Tekst göwrimini giriz':'Tekst göwrimini giriz',
      'Dilini üýtgetmelimi ?':'Dilini üýtgetmelimi ?',
      "Programmadan çykmak isleyärsiňmi" : "Programmadan çykmak isleyärsiňmi",
      "Türkmen tagamlary" : "Türkmen tagamlary",
      "Içgiler":"Içgiler",
      "Süýt Önümleri": "Süýt Önümleri",
      "Konditer Önümleri" : "Konditer Önümleri",
      "Çorbalar":"Çorbalar",
      "Gyzgyn Naharlar" : "Gyzgyn Naharlar",
      "Içdä açarlar" : "Içdä açarlar",
      "Süýjiler":"Süýjiler",
      "Ähli Iýmitler" : "Ähli Iýmitler"
      
    },
    'en':{
      'Hawa':'yes',
      'Ýok': 'No',
      'Paylaş':'Share',
      'Sazlamalar': 'Settings',
      'Dilini Sayla':'Choose Language',
      'Tema': 'Theme',
      'Biz Hakynda': "About Us",
      'Çykalga':'Exit',
      'Tekst göwrimini giriz':'Enter the text size',
      'Dilini üýtgetmelimi ?':'Do you want to change language ?',
      "Programmadan çykmak isleyärsiňmi" : "Do you want to exit from application ?",
      "Türkmen tagamlary" : "Turkmen Foods",
      "Içgiler":"Drinks",
      "Süýt Önümleri": "Dairy Products",
      "Konditer Önümleri" : "Pastry",
      "Çorbalar":"Soups",
      "Gyzgyn Naharlar" : "Hot Dishes",
      "Içdä açarlar" : "Salads",
      "Süýjiler":"Sweets",
      "Ähli Iýmitler" : "All Foods"



    }
  };
  String translate(String key) {
    return _localizedValues[_currentLanguage]?[key] ?? key;
  }

  void changeLanguage() {
    _currentLanguage = (_currentLanguage == "en") ? "tr" : "en";
    notifyListeners(); // UI'yı güncellemek için
  }
}