import 'package:flutter/material.dart';

class FullScreenColor extends StatefulWidget {
  const FullScreenColor({Key? key}) : super(key: key);

  @override
  State<FullScreenColor> createState() => _FullScreenColorState();
}

class _FullScreenColorState extends State<FullScreenColor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.orange,
            Colors.blueAccent,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text("hello"),
          centerTitle: true,
        ),
      ),
    );
  }
}
