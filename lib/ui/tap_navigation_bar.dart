import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/home.dart';
import '../pages/me.dart';
import '../pages/notifications.dart';
import '../pages/saved.dart';
import '../pages/write.dart';

class TapNavigationBar extends StatefulWidget {
  const TapNavigationBar({Key? key}) : super(key: key);

  @override
  State<TapNavigationBar> createState() => _TapNavigationBarState();
}

class _TapNavigationBarState extends State<TapNavigationBar>
    with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 5,
      vsync: this,
    );
  }

  Color greenColor = const Color(0xFF0DAA41);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: greenColor,
        bottom: TabBar(
            indicatorColor: Colors.white,
            controller: tabController,
            tabs: const <Tab>[
              Tab(
                icon: Icon(Icons.home_filled),
                text: "Home",
              ),
              Tab(
                icon: Icon(CupertinoIcons.heart),
                text: "Saved",
              ),
              Tab(
                icon: Icon(Icons.notifications),
                text: "Notifications",
              ),
              Tab(
                icon: Icon(Icons.person),
                text: "Me",
              ),
              Tab(
                icon: Icon(Icons.add),
                text: "Write",
              ),
            ]),
      ),
      body: TabBarView(controller: tabController, children: const <Widget>[
        HomePage(),
        SavedPage(),
        NotificationsPage(),
        MePage(),
        WritePage()
      ]),
    );
  }
}

/*
 body: TabBarView(controller: tabController, children: <Widget>[
        Container(
          color: Colors.black,
        ),
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.blue,
        ),
        Container(
          color: Colors.brown,
        ),
        Container(
          color: Colors.amber,
        ),
      ]),
*/


/*
bottom: TabBar(controller: tabController, tabs: const <Tab>[
          Tab(
            icon: Icon(Icons.home_filled),
            text: "Home",
          ),
          Tab(
            icon: Icon(CupertinoIcons.heart),
            text: "Saved",
          ),
          Tab(
            icon: Icon(Icons.notifications),
            text: "Notifications",
          ),
          Tab(
            icon: Icon(Icons.person),
            text: "Me",
          ),
          Tab(
            icon: Icon(Icons.add),
            text: "Write",
          ),
        ]),
*/