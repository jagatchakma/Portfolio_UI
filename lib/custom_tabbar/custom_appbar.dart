import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  // static final String id = 'custom appbar';
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  State<CustomTabBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 7, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Title one',
              style: TextStyle(fontSize: 22.0),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              elevation: 5.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: TabBar(
                  controller: tabController,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    color: Colors.orange,
                  ),
                  isScrollable: true,
                  unselectedLabelColor: Colors.deepPurple,
                  labelColor: Colors.white,
                  labelStyle: TextStyle(fontSize: 18.0),
                  labelPadding:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                  tabs: [
                    Text(
                      "data",
                    ),
                    Text(
                      "data",
                    ),
                    Text(
                      "data",
                    ),
                    Text(
                      "data",
                    ),
                    Text(
                      "data",
                    ),
                    Text(
                      "data",
                    ),
                    Text(
                      "data",
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  Center(
                    child: Text("hello"),
                  ),
                  Center(
                    child: Text("jagat"),
                  ),
                  Center(
                    child: Text("mettra"),
                  ),
                  Center(
                    child: Text("jagat"),
                  ),
                  Center(
                    child: Text("mettra"),
                  ),
                  Center(
                    child: Text("jagat"),
                  ),
                  Center(
                    child: Text("mettra"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
