import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
        title: Text('Home Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            number.toString(),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => RouteTwoScreen(),
                ),
              );
            },
            child: Text('go to RouteTwo'),
          ),
          Center(
            child: Text('route one'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(456);
            },
            child: Text('back to homescreen'),
          ),
          Center(
            child: Text('route one'),
          ),
        ],
      ),
    );
  }
}
