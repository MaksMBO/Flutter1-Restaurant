import 'package:flutter/material.dart';

class Menu {
  final Map<String, double> _menuItems = {};

  set menuItems(Map<String, double> items) => _menuItems.addAll(items);

  Widget get menuWidget {
    List<Widget> menuItems = [];

    _menuItems.forEach((item, price) {
      menuItems.add(
        ListTile(
          title: Text(item, style: const TextStyle(fontSize: 16)),
          trailing: Text(
            price.toString(),
            style: const TextStyle(
                fontSize: 14,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
        ),
      );
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Меню:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 10),
        Column(
          children: menuItems,
        ),
      ],
    );
  }
}
