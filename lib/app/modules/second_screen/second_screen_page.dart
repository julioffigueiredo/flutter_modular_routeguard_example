import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_routeguard_example/app/modules/second_screen/second_screen_store.dart';
import 'package:flutter/material.dart';

class SecondScreenPage extends StatefulWidget {
  final String title;
  const SecondScreenPage({Key? key, this.title = 'SecondScreenPage'}) : super(key: key);
  @override
  SecondScreenPageState createState() => SecondScreenPageState();
}

class SecondScreenPageState extends State<SecondScreenPage> {
  final SecondScreenStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
