import 'package:flutter/material.dart';
import 'package:navigation/screen/route_three.dart';

class RouteTwoScreen extends StatelessWidget {
  const RouteTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Route Two'),
      ),
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
              Navigator.of(context).pushNamed('/three', arguments: 999);
            },
            child: Text('Pust Named'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/three');
            },
            child: Text('Push Replacement'),
          ),
        ],
      ),
    );
  }
}
