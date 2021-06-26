import 'package:flutter/cupertino.dart';

class MenuModel extends ChangeNotifier {
  Menu _menu = Menu.HOME;
  get menu => _menu;

  setMenu(Menu menu) {
    _menu = menu;
    notifyListeners();
  }
}

enum Menu { HOME, ABOUT_ME, RESUME, BLOG, CONTACT }
