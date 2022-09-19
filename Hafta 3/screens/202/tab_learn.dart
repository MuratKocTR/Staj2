import 'package:flutter/material.dart';
import 'package:flutter_lesson_2/screens/101/card_learn.dart';
import 'package:flutter_lesson_2/screens/101/stack_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({Key? key}) : super(key: key);

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController( length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _MyTabViews.values.length,
        child: Scaffold(
          extendBody: true,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(onPressed: () {
            _tabController.animateTo(_MyTabViews.Home.index);
          }),
          bottomNavigationBar: BottomAppBar(
              notchMargin: 10,
              child: _tabBar(tabController: _tabController)),
          appBar: AppBar(
              /* bottom: TabBar(
                controller:_tabController ,
            tabs: [
              Tab(
                text: "1",
              ),
              Tab(
                text: "2",
              )
            ],
          )*/
              ),
          body: _myTabBarView(tabController: _tabController),
        ));
  }
}

class _tabBar extends StatelessWidget {
  const _tabBar({
    Key? key,
    required TabController tabController,
  }) : _tabController = tabController, super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorColor: Colors.teal,
      labelColor: Colors.white,
      unselectedLabelColor: Colors.teal[800],
      controller: _tabController,
      padding: EdgeInsets.zero,
      onTap: (int index) {},
      
      //isscrollable sıkıştırmaya yarıyor
      //isScrollable: true,
      tabs: 
        _MyTabViews.values.map((e) => Tab(text: '${e.name}',)).toList(

        )
      
    );
  }
}

class _myTabBarView extends StatelessWidget {
  const _myTabBarView({
    Key? key,
    required TabController tabController,
  }) : _tabController = tabController, super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      physics: NeverScrollableScrollPhysics(),
      //tabbarview in sağa yada sola çekilememesini sağlar

      controller: _tabController,

      children: [CardLearn(), StackLearn(),CardLearn(), StackLearn()],
    );
  }
}

enum _MyTabViews { Home, Settings, Favorite, Profile }
extension _MyTabViewExtension on _MyTabViews{

}
