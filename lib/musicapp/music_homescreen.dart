import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

import 'playingscreen.dart';

class MusicHomeScreen extends StatefulWidget {
  static const String id = 'HomeScreen';
  const MusicHomeScreen({Key? key}) : super(key: key);

  @override
  State<MusicHomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MusicHomeScreen>
    with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _scrollController = ScrollController();
  }

  final _currentPageNotifier = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    ImageIcon(
                      AssetImage('images/menu.jpg'),
                      size: 24.0,
                      // color: Colors.black,
                    ),
                    Spacer(),
                    Icon(Icons.search),
                    SizedBox(width: 10.0),
                    Icon(Icons.notifications),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      child: Text(
                        'popular books',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 180.0,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      PageView.builder(
                        itemCount: 3,
                        // controller: PageController(viewportFraction: 0.8),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('images/menu.jpg'),
                              ),
                            ),
                          );
                        },
                        onPageChanged: (int index) {
                          _currentPageNotifier.value = index;
                        },
                      ),
                      ////
                      Positioned(
                        left: 0.0,
                        right: 0.0,
                        // top: 0.0,
                        bottom: 0.0,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CirclePageIndicator(
                            itemCount: 3,
                            size: 20.0,
                            selectedSize: 24.0,
                            dotColor: Colors.purple[300],
                            selectedDotColor: Colors.purple[700],
                            currentPageNotifier: _currentPageNotifier,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: NestedScrollView(
                    controller: _scrollController,
                    //
                    headerSliverBuilder:
                        (BuildContext context, bool innerBoxIsScrolled) {
                      return [
                        SliverAppBar(
                          backgroundColor: Colors.white,
                          bottom: PreferredSize(
                            preferredSize: Size.fromHeight(50.0),
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 10.0),
                              // color: Colors.grey,
                              child: TabBar(
                                indicatorPadding: EdgeInsets.all(0.0),
                                indicatorSize: TabBarIndicatorSize.label,
                                labelPadding: EdgeInsets.all(5.0),
                                controller: _tabController,
                                // isScrollable: true,
                                indicator: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.deepPurple.withOpacity(0.2),
                                      blurRadius: 7,
                                      offset: Offset(0, 0),
                                    )
                                  ],
                                ),
                                tabs: [
                                  Container(
                                    height: 50.0,
                                    width: 120.0,
                                    decoration: BoxDecoration(
                                      color: Colors.yellow[800],
                                      borderRadius: BorderRadius.circular(10.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          blurRadius: 7,
                                          offset: Offset(0, 0),
                                        ),
                                      ],
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'new',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 50.0,
                                    width: 120.0,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(10.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          blurRadius: 7,
                                          offset: Offset(0, 0),
                                        ),
                                      ],
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'new',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 50.0,
                                    width: 120.0,
                                    decoration: BoxDecoration(
                                      color: Colors.purple,
                                      borderRadius: BorderRadius.circular(10.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          blurRadius: 7,
                                          offset: Offset(0, 0),
                                        ),
                                      ],
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'new',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ];
                    },
                    body: TabBarView(
                      controller: _tabController,
                      children: [
                        //
                        ListView.builder(
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PlayingScreen(
                                      singreName: 'hellllll',
                                      songName: 'asldfaskjfdk',
                                    ),
                                  ),
                                );
                              },
                              child: Container(
                                height: 150.0,
                                color: Colors.grey[300],
                                margin: EdgeInsets.symmetric(
                                  // horizontal: 20.0,
                                  vertical: 18.0,
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 110.0,
                                      height:
                                          MediaQuery.of(context).size.height,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage('images/menu.jpg'),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 20.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow[800],
                                              ),
                                              SizedBox(
                                                width: 10.0,
                                              ),
                                              Text(
                                                "5.8",
                                                style: TextStyle(
                                                  fontSize: 22.0,
                                                  color: Colors.yellow[800],
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            'Song title one',
                                            style: TextStyle(
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Song writer name',
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.grey[600]),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {},
                                            child: Text('love'),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                        //
                        Material(
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.blue,
                            ),
                            title: Text('containt'),
                          ),
                        ),
                        Material(
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.purple,
                            ),
                            title: Text('containt'),
                          ),
                        ),
                      ],
                    ),
                    //
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
