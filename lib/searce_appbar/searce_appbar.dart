import 'package:flutter/material.dart';

class SearceAppBar extends StatefulWidget {
  const SearceAppBar({Key? key}) : super(key: key);

  @override
  State<SearceAppBar> createState() => _SearceAppBarState();
}

class _SearceAppBarState extends State<SearceAppBar> {
  String searchData = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Card(
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              fillColor: Colors.grey,
              focusColor: Colors.grey,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey[700],
              ),
            ),
            cursorColor: Colors.grey[700],
            onChanged: (v) {
              //
              setState(() {
                searchData = v;
              });
            },
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 300.0,
          width: 300.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.deepPurpleAccent,
                Colors.orangeAccent,
              ],
            ),
          ),
          child: Text(searchData),
        ),
      ),
    );
  }
}
