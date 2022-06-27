import 'package:flutter/material.dart';

class GenaralGridView extends StatelessWidget {
  const GenaralGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        itemCount: 50,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Card(
            color: Colors.grey,
            child: Center(
              child: Text('$index'),
            ),
          );
        },
      ),
    );
  }
}
