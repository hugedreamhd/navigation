import 'package:flutter/material.dart';
import 'package:navigation/screen/route_two.dart';

class RouteOneScreen extends StatelessWidget {
  final int number;

  const RouteOneScreen({
    required this.number,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Route One'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'arguments : ${number.toString()}',
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(456);
            },
            child: Text('pop to homescreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => RouteTwoScreen(),
                  settings: RouteSettings(
                    arguments: 789,
                  ),
                ),
              );
            },
            child: Text('push to RouteTwo'),
          ),
        ],
      ),
    );
  }
}
