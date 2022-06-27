import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeSliver extends StatefulWidget {
  const HomeSliver({Key? key}) : super(key: key);

  @override
  State<HomeSliver> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeSliver> {
  late double slicerAppBarHeight = MediaQuery.of(context).size.height / 4;
  double top = 0.0;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      setState(() {
        //
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.grey,
                expandedHeight: slicerAppBarHeight,
                // floating: true,
                pinned: true,
                title: Text('Hello'),

                // stretch: true,
                flexibleSpace: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    top = constraints.biggest.height;
                    return FlexibleSpaceBar(
                      title: AnimatedOpacity(
                        opacity: top <= slicerAppBarHeight / 1.5 ? 1.0 : 0.0,
                        duration: Duration(milliseconds: 300),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('title'),
                            SizedBox(
                              width: 10.0,
                            ),
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://images.pexels.com/photos/3779760/pexels-photo-3779760.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                            ),
                          ],
                        ),
                      ),
                      centerTitle: true,
                      background: Image.network(
                        'https://images.pexels.com/photos/167699/pexels-photo-167699.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Container(
                      height: 2000.0,
                      width: 200.0,
                      color: Colors.brown,
                    )
                  ],
                ),
              )
            ],
          ),
          _buildFab(),
        ],
      ),
    );
  }

  Widget _buildFab() {
    final double defaultMargin = 250;
    final double defaultStart = slicerAppBarHeight;
    final double defaultEnd = slicerAppBarHeight / 2;

    double top = slicerAppBarHeight;
    double scale = 1.0;

    if (_scrollController.hasClients) {
      double offset = _scrollController.offset;
      top -= offset;

      if (offset < slicerAppBarHeight - defaultStart) {
        scale = 1.0;
      } else if (offset < defaultStart - defaultEnd) {
        scale = (slicerAppBarHeight - defaultEnd - offset) / defaultEnd;
      } else {
        scale = 0.0;
      }
    }

    return Positioned(
      top: top,
      left: 16,
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.identity()..scale(scale),
        child: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
            'https://images.pexels.com/photos/3779760/pexels-photo-3779760.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          ),
        ),
      ),
    );
  }
}
