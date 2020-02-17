import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/andpad_logo.dart';
import '../../model/counter_model.dart';

class AndpadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CounterModel>(
      create: (_) => CounterModel(),
      child: Scaffold(
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
                Consumer<CounterModel>(
                  builder: (context, model, child) {
                    return Text("${model.count}");
                  }
                ),
                IncrementButton(),
                FlatButton(
                  child: const Text('NavigationPush'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/andpad');
                  },
                ),
              ]
            )
          )
        )
      )
    );
  }
}

class IncrementButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<CounterModel>(context);
    return FlatButton(
      child: const Text('Increment'),
      onPressed: () {
        counterModel.increment();
      },
    );
  }
}