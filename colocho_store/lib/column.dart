import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                color: Colors.blue,
                height: 200.0,
              ),
              Container(
                color: Colors.green,
                height: 200.0,
              ),
              Container(
                color: Colors.red,
                height: 200.0,
              ),
              Container(
                color: Colors.orange,
                height: 200.0,
              ),
              Container(
                color: Colors.pink,
                height: 200.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
