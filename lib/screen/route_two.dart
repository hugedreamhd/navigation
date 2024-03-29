import 'package:flutter/material.dart';

class RouteTwoScreen extends StatelessWidget {
  const RouteTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Route Two'),
          ),
          Center(
            child: Text('route two'),
          ),
        ],
      ),
    );
  }
}
