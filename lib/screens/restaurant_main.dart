import 'package:flutter/material.dart';

import '../data/stores.dart';
import '../data/users.dart';

class MyClassWidget extends StatefulWidget {
  const MyClassWidget({super.key});

  @override
  _MyClassWidgetState createState() => _MyClassWidgetState();
}

class _MyClassWidgetState extends State<MyClassWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurants'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Про мене:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Ім\'я: ${aboutMe.nameUser}',
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                'Прізвище: ${aboutMe.surnameUser}',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 30),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      children: [
                        Text(
                          'Назви ресторанів',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: List.generate(
                      stores.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          children: [
                            const Divider(), // Горизонтальна лінія
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  stores[index]['showMenu'] =
                                      !stores[index]['showMenu'];
                                });
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                      child: stores[index]['restaurant']
                                          .nameRestaurant),
                                  Icon(stores[index]['showMenu']
                                      ? Icons.keyboard_arrow_up
                                      : Icons.keyboard_arrow_down),
                                ],
                              ),
                            ),

                            stores[index]['showMenu']
                                ? stores[index]['restaurant'].displayMenu
                                : const SizedBox()
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Divider(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
