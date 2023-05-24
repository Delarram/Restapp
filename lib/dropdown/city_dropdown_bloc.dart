import 'package:flutter/cupertino.dart';

class CityDropDownBloc extends ChangeNotifier{
  String selectedCity = "YanGon";
  String selectedTownShip = "San Chaung";

  final List <String> cityList = ["Yangon","Mandalay","Mogok","Lashio","Taung Gyi","Myit kyi Na"];
  final List<String> townshipList = ["a", "b", "c", "d", "e"];
  void onSelectedCity(String item){
   selectedCity = item;
    notifyListeners();
  }

  void onSelectedTownShip(String item){
    selectedTownShip = item;
    notifyListeners();
  }

}