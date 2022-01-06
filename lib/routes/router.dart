import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route_sample/home_page.dart';
import 'package:auto_route_sample/posts/posts_page.dart';
import 'package:auto_route_sample/posts/single_post_page.dart';
import 'package:auto_route_sample/settings/settings_page.dart';
import 'package:auto_route_sample/users/user_profile_page.dart';
import 'package:auto_route_sample/users/users_page.dart';

/// Created by Naveen Verma on 04-01-2022
/// To The New
/// naveen.verma@tothenew.com

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(path: '/', page: HomePage, children: [
      AutoRoute(
        path: 'posts',
        name: 'PostsRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(
            path: '',
            page: PostsPage,
          ),
          AutoRoute(
            path: ':postId',
            page: SinglePostPage,
          )
        ],
      ),
      AutoRoute(
        path: 'users',
        name: 'UsersRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(
            path: '',
            page: UsersPage,
          ),
          AutoRoute(
            path: ':userId',
            page: UserProfilePage,
          ),
        ],
      ),
      AutoRoute(
        path: 'settings',
        name: 'SettingsRouter',
        page: SettingsPage,
      )
    ]),
  ],
)
class $AppRouter {}

// SinglePostPageRoute
