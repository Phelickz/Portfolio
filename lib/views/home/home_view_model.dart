import 'package:portfolio/core/base/base_view_model.dart';

class HomeViewModel extends BaseViewModel {


  HomeViewModel();

  bool _menuActive = false;

  bool get menuActive => _menuActive;

  bool _splashScreen = true;

  bool get splash => _splashScreen;

  void setBool(bool scrolled){
    _menuActive = scrolled;
    notifyListeners();
  }

  void setSplash(bool splash){
    _splashScreen = splash;
    notifyListeners();
  }
}