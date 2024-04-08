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
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  '/three', (route) => route.settings.name == '/');
              //route를 false로 하면 이동 한 후 앞 라우터스택 모두 삭제
              //route를 true로 하면 이동 한 후 route 스택 유지
              //route.settings.name으로 특정 라우트만 삭제 가능
              //pushNamedAndRemoveUntil을 이용해 특정 route로 바로 이동 가능 삭제 기능은 위랑 같음
            },
            child: Text('Push And Remove Until'),
          ),
        ],
      ),
    );
  }
}
