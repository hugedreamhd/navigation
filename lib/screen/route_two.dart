import 'package:flutter/material.dart';
import 'package:navigation/screen/route_three.dart';

class RouteTwoScreen extends StatelessWidget {
  const RouteTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'arguments : ${arguments}',
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('pop to Route One'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => RouteThreeScreen(),
                ),
              );
            },
            child: Text('push to Route Three'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/three');
            },
            child: Text('Pust Named'),
          ),
        ],
      ),
    );
  }
}
