import 'package:flutter/material.dart';
import 'package:navigation/screen/route_one.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Home Screen',
      children: [
        
      ]
    )    
    
    
    
    Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () async {
                  final result = await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => const RouteOneScreen(
                        number: 123,
                      ),
                    ),
                  );
                  print('result : $result');
                },
                child: Text('Push'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MainLayout {
}
