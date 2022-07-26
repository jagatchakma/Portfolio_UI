import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StatusBar extends StatefulWidget {
  const StatusBar({Key? key}) : super(key: key);

  @override
  State<StatusBar> createState() => _StatusBarState();
}

class _StatusBarState extends State<StatusBar> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
    hedant();
  }

  void hedant() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      // SystemUiMode.leanBack,
      // SystemUiMode.immersive,
      // SystemUiMode.immersiveSticky,
      // manual for overlays
      // leanBack single tuch on and single tuch off
      // immersive swape to on
      // immersiveStickey swape to on for few secand
      overlays: [
        // if do top make top not hedant
        // if do bottom make bottom not hedant
        // if do both or no one will be both heint
        // SystemUiOverlay.bottom,
        // SystemUiOverlay.top,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: Text("one"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("one"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("one"),
            ),
          ],
        ),
      ),
    );
  }
}
