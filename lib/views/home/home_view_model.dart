import 'package:portfolio/core/base/base_view_model.dart';

class HomeViewModel extends BaseViewModel {


  HomeViewModel();

  bool _menuActive = false;

  bool get menuActive => _menuActive;

  void setBool(){
    _menuActive = ! _menuActive;
    notifyListeners();
  }


}