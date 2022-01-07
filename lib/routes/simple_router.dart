import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route_sample/home_page.dart';
import 'package:auto_route_sample/posts/posts_page.dart';
import 'package:auto_route_sample/settings/settings_page.dart';
import 'package:auto_route_sample/users/users_page.dart';
import 'package:flutter/material.dart';

/// Created by Naveen Verma on 07-01-2022
/// To The New
/// naveen.verma@tothenew.com

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: PostsPage, path: 'posts'),
    AutoRoute(page: UsersPage, path: 'users', name: 'AllUsersRoute'),
    AutoRoute(page: SettingsPage, path: 'settings'),

    // handle invalid path
    // RedirectRoute(path: '*', redirectTo: 'posts'),

    // customRoute
    // CustomRoute(
    //   page: CustomDialog,
    //   name: 'CustomDialogRoute',
    //   // transitionsBuilder: TransitionsBuilders.slideBottom,
    //   transitionsBuilder: zoomInTransition,
    //   path: 'customDialog',
    // ),
  ],
)

/// Simple router class with three pages
class $SimpleRoute {}

Widget zoomInTransition(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  // you get an animation object and a widget
  // make your own transition
  return ScaleTransition(scale: animation, child: child);
}
