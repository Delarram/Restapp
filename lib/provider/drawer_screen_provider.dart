import 'package:flutter/material.dart';
import 'package:rest_api/screens/home_screen.dart';
import '../screens/my_account.dart';

class DrawerScreenProvider extends ChangeNotifier {
  late Widget _currentScreen = const HomeScreen();

  Widget get currentScreen => _currentScreen;

  set currentScreen(Widget newScreen) {
    _currentScreen = newScreen;
    notifyListeners();
  }


  void changeCurrentScreen(CustomScreensEnum screen){
    switch(screen){
      case CustomScreensEnum.homeScreen:
        currentScreen = const HomeScreen();
        break;
      case CustomScreensEnum.profileScreen:
        currentScreen = const MyAccount();
        break;
      default:
        currentScreen = const HomeScreen();
        break;
    }
  }
}

enum CustomScreensEnum {
  homeScreen,
  profileScreen
}