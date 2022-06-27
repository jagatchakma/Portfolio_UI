import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PlayingScreen extends StatefulWidget {
  static const String id = 'PlayingScreen';
  final String songName;
  final String singreName;
  const PlayingScreen(
      {Key? key, required this.songName, required this.singreName})
      : super(key: key);

  @override
  State<PlayingScreen> createState() => _PlayingScreenState();
}

class _PlayingScreenState extends State<PlayingScreen> {
  late AudioPlayer player;
  //
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    player = AudioPlayer();
  }

  //
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: screenHeight / 4,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              elevation: 0.0,
              // backgroundColor: Colors.transparent,
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: screenHeight * 0.2,
            height: screenHeight * 0.30,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(
                  Radius.circular(40.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Song title',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Song singar or writer',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    // Row
                    // AudioPlay(player: player),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.12,
            left: (screenWidth - 150) / 2,
            right: (screenWidth - 150) / 2,
            child: Container(
              height: 150.0,
              width: 150.0,
              decoration: BoxDecoration(
                // color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(color: Colors.white, width: 2.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                    border: Border.all(color: Colors.white, width: 2.0),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('images/menu.jpg'),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
