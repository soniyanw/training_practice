import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sliverbar extends StatefulWidget {
  @override
  _SliverbarState createState() => _SliverbarState();
}

class _SliverbarState extends State<Sliverbar> {
  List<Color> colors = [
    Colors.tealAccent,
    Colors.yellowAccent,
    Colors.redAccent,
    Colors.purpleAccent,
    Colors.blueGrey,
    Colors.lightBlueAccent,
    Colors.orange,
    Colors.lime,
    Colors.greenAccent,
    Colors.cyanAccent,
    Colors.amber,
    Colors.pinkAccent,
  ];
  Color colorsfunc(int index) {
    if (index % 3 == 0)
      return Colors.lime;
    else if ((index + 1) % 3 == 0)
      return Colors.teal;
    else
      return Colors.redAccent;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  backgroundColor: Colors.white,
                  expandedHeight: 220.0,
                  floating: true,
                  snap: true,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                      expandedTitleScale: 1.5,
                      centerTitle: true,
                      collapseMode: CollapseMode.parallax,
                      title: Text("SliverAppBar",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 22.0,
                          )),
                      background: CustomScrollView(slivers: [
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) => ListTile(
                              title: Text('Item ${index + 1}'),
                              tileColor: colorsfunc(index),
                            ),
                            childCount: 10,
                          ),
                        ),
                      ])),
                ),
                SliverPersistentHeader(
                  delegate: _SliverAppBarDelegate(
                    TabBar(
                      labelColor: Colors.black87,
                      indicatorColor: Colors.black,
                      unselectedLabelColor: Colors.black54,
                      tabs: [
                        Tab(
                          icon: Icon(Icons.grid_3x3),
                          text: "Tab 1",
                        ),
                        Tab(icon: Icon(Icons.grid_4x4), text: "Tab 2"),
                      ],
                    ),
                  ),
                  pinned: true,
                ),
              ];
            },
            body: TabBarView(children: [
              Container(
                color: Colors.white,
                child: GridView.count(
                    crossAxisCount: 2,
                    children: List.generate(
                        100,
                        (index) => Card(
                              color:
                                  colors[Random().nextInt(colors.length - 1)],
                              child: Text('Grid ${index + 1}'),
                            ))),
              ),
              Container(
                color: Colors.white,
                child: GridView.count(
                    crossAxisCount: 3,
                    children: List.generate(
                        100,
                        (index) => Card(
                              color:
                                  colors[Random().nextInt(colors.length - 1)],
                              child: Text('Grid ${index + 1}'),
                            ))),
              ),
            ])),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);
  final TabBar _tabBar;
  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      color: Colors.white,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return true;
  }
}
