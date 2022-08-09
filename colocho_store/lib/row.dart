import 'package:flutter/material.dart';

class RowScreen extends StatelessWidget {
  const RowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row'),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            children: [
              Container(
                color: Colors.blue,
                height: 200.0,
                width: 200.0,
              ),
              Container(
                color: Colors.green,
                height: 200.0,
                width: 200.0,
              ),
              Container(
                color: Colors.red,
                height: 200.0,
                width: 200.0,
              ),
              Container(
                color: Colors.orange,
                height: 200.0,
                width: 200.0,
              ),
              Container(
                color: Colors.pink,
                height: 200.0,
                width: 200.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
