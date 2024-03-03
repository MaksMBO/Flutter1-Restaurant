import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taks1/models/menu_model.dart';

class Restaurant {
  String _name;
  final Menu _menu;

  Restaurant(this._name, this._menu);

  String get name => _name;
  set name(String name) => _name = name;

  Widget get displayMenu => _menu.menuWidget;

  Widget get nameRestaurant {
    if (_name.isNotEmpty) {
      return Text(
        name,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      );
    } else {
      return const Text(
        'Назва ресторану відсутня',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      );
    }
  }

}
