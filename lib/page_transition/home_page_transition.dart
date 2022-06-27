import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:portfolio_ui/page_transition/pagetwo.dart';

class HomeTransition extends StatefulWidget {
  const HomeTransition({Key? key}) : super(key: key);

  @override
  State<HomeTransition> createState() => _HomeState();
}

class _HomeState extends State<HomeTransition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page one"),
      ),
      backgroundColor: Colors.purple,
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    transitionDuration: Duration(seconds: 2),
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        PageTwo(),
                    transitionsBuilder:
                        (context, animation, animationTime, child) {
                      animation = CurvedAnimation(
                        parent: animation,
                        //build type of animation
                        curve: Curves.easeInBack,
                      );
                      return ScaleTransition(
                        scale: animation,
                        alignment: Alignment.bottomLeft,
                        child: child,
                      );
                    },
                  ),
                );
              },
              child: Text('button'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    child: PageTwo(),
                  ),
                );
              },
              child: Text('fade'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.size,
                    alignment: Alignment.bottomCenter,
                    child: PageTwo(),
                  ),
                );
              },
              child: Text('button'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    child: PageTwo(),
                    type: PageTransitionType.leftToRightJoined,
                    alignment: Alignment.centerLeft,
                    duration: Duration(milliseconds: 900),
                    reverseDuration: Duration(milliseconds: 900),
                    childCurrent: widget,
                  ),
                );
              },
              child: Text('button button'),
            ),
          ],
        ),
      ),
    );
  }
}
