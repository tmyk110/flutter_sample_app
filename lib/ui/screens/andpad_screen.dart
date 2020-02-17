import 'package:flutter/material.dart';
import '../components/andpad_logo.dart';

class AndpadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Andpad'),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AndpadLogo(),
              Text("明日から使えるカンタン施工管理アプリ"),
              FlatButton(
                child: const Text('Press'),
                onPressed: () {
                  Navigator.pushNamed(context, '/andpad');
                },
              ),
            ]
          )
        )
      )
    );
  }
}
