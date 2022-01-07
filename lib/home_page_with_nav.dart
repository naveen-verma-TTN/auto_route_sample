import 'package:auto_route/auto_route.dart';
import 'package:auto_route_sample/routes/router_with_nested_routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

/// Created by Naveen Verma on 07-01-2022
/// To The New
/// naveen.verma@tothenew.com

class HomePageWithNav extends StatelessWidget {
  const HomePageWithNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (_, tabRouter) => AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: const Text('Auto Route with Bottom Navigation bar'),
        centerTitle: true,
        leading: const AutoBackButton(),
      ),
      backgroundColor: Colors.blueGrey[800],
      routes: const [
        PostsRouter(),
        UsersRouter(),
        SettingsRouter(),
        OrdersWrapperPageRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) => SalomonBottomBar(
        margin: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 40.0,
        ),
        currentIndex: tabsRouter.activeIndex,
        onTap: tabsRouter.setActiveIndex,
        items: [
          SalomonBottomBarItem(
            selectedColor: Colors.amberAccent,
            icon: const Icon(
              Icons.post_add,
              size: 30.0,
            ),
            title: const Text('Posts'),
          ),
          SalomonBottomBarItem(
            selectedColor: Colors.blue[200],
            icon: const Icon(
              Icons.person,
              size: 30.0,
            ),
            title: const Text('Users'),
          ),
          SalomonBottomBarItem(
            selectedColor: Colors.pinkAccent[100],
            icon: const Icon(
              Icons.settings,
              size: 30.0,
            ),
            title: const Text('Settings'),
          ),
          SalomonBottomBarItem(
            selectedColor: Colors.green[500],
            icon: const Icon(
              Icons.bookmark_border,
              size: 30.0,
            ),
            title: const Text('Order'),
          ),
        ],
      ),
    );
  }
}
