// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i11;

import '../home_page_with_nav.dart' as _i1;
import '../orders/order_history.dart' as _i10;
import '../orders/order_page.dart' as _i9;
import '../orders/orders_wrapper_page.dart' as _i4;
import '../posts/posts_page.dart' as _i5;
import '../posts/single_post_page.dart' as _i6;
import '../settings/settings_page.dart' as _i3;
import '../users/user_profile_page.dart' as _i8;
import '../users/users_page.dart' as _i7;

class AppRouterWithNav extends _i2.RootStackRouter {
  AppRouterWithNav([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeRouteWithNav.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePageWithNav());
    },
    PostsRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    UsersRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    SettingsRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SettingsPage());
    },
    OrdersWrapperPageRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.OrdersWrapperPage());
    },
    PostsRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.PostsPage());
    },
    SinglePostRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<SinglePostRouteArgs>(
          orElse: () =>
              SinglePostRouteArgs(postId: pathParams.getInt('postId')));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.SinglePostPage(key: args.key, postId: args.postId));
    },
    UsersRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.UsersPage());
    },
    UserProfileRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<UserProfileRouteArgs>(
          orElse: () =>
              UserProfileRouteArgs(userId: pathParams.getInt('userId')));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.UserProfilePage(key: args.key, userId: args.userId));
    },
    OrderRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.OrderPage());
    },
    OrderHistoryRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.OrderHistory());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(HomeRouteWithNav.name, path: '/', children: [
          _i2.RouteConfig(PostsRouter.name,
              path: 'posts',
              parent: HomeRouteWithNav.name,
              children: [
                _i2.RouteConfig(PostsRoute.name,
                    path: '', parent: PostsRouter.name),
                _i2.RouteConfig(SinglePostRoute.name,
                    path: ':postId', parent: PostsRouter.name)
              ]),
          _i2.RouteConfig(UsersRouter.name,
              path: 'users',
              parent: HomeRouteWithNav.name,
              children: [
                _i2.RouteConfig(UsersRoute.name,
                    path: '', parent: UsersRouter.name),
                _i2.RouteConfig(UserProfileRoute.name,
                    path: ':userId', parent: UsersRouter.name)
              ]),
          _i2.RouteConfig(SettingsRouter.name,
              path: 'settings', parent: HomeRouteWithNav.name),
          _i2.RouteConfig(OrdersWrapperPageRoute.name,
              path: 'ordersWrapper',
              parent: HomeRouteWithNav.name,
              children: [
                _i2.RouteConfig(OrderRoute.name,
                    path: '', parent: OrdersWrapperPageRoute.name),
                _i2.RouteConfig(OrderHistoryRoute.name,
                    path: 'orderHistory', parent: OrdersWrapperPageRoute.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.HomePageWithNav]
class HomeRouteWithNav extends _i2.PageRouteInfo<void> {
  const HomeRouteWithNav({List<_i2.PageRouteInfo>? children})
      : super(HomeRouteWithNav.name, path: '/', initialChildren: children);

  static const String name = 'HomeRouteWithNav';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class PostsRouter extends _i2.PageRouteInfo<void> {
  const PostsRouter({List<_i2.PageRouteInfo>? children})
      : super(PostsRouter.name, path: 'posts', initialChildren: children);

  static const String name = 'PostsRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class UsersRouter extends _i2.PageRouteInfo<void> {
  const UsersRouter({List<_i2.PageRouteInfo>? children})
      : super(UsersRouter.name, path: 'users', initialChildren: children);

  static const String name = 'UsersRouter';
}

/// generated route for
/// [_i3.SettingsPage]
class SettingsRouter extends _i2.PageRouteInfo<void> {
  const SettingsRouter() : super(SettingsRouter.name, path: 'settings');

  static const String name = 'SettingsRouter';
}

/// generated route for
/// [_i4.OrdersWrapperPage]
class OrdersWrapperPageRoute extends _i2.PageRouteInfo<void> {
  const OrdersWrapperPageRoute({List<_i2.PageRouteInfo>? children})
      : super(OrdersWrapperPageRoute.name,
            path: 'ordersWrapper', initialChildren: children);

  static const String name = 'OrdersWrapperPageRoute';
}

/// generated route for
/// [_i5.PostsPage]
class PostsRoute extends _i2.PageRouteInfo<void> {
  const PostsRoute() : super(PostsRoute.name, path: '');

  static const String name = 'PostsRoute';
}

/// generated route for
/// [_i6.SinglePostPage]
class SinglePostRoute extends _i2.PageRouteInfo<SinglePostRouteArgs> {
  SinglePostRoute({_i11.Key? key, required int postId})
      : super(SinglePostRoute.name,
            path: ':postId',
            args: SinglePostRouteArgs(key: key, postId: postId),
            rawPathParams: {'postId': postId});

  static const String name = 'SinglePostRoute';
}

class SinglePostRouteArgs {
  const SinglePostRouteArgs({this.key, required this.postId});

  final _i11.Key? key;

  final int postId;

  @override
  String toString() {
    return 'SinglePostRouteArgs{key: $key, postId: $postId}';
  }
}

/// generated route for
/// [_i7.UsersPage]
class UsersRoute extends _i2.PageRouteInfo<void> {
  const UsersRoute() : super(UsersRoute.name, path: '');

  static const String name = 'UsersRoute';
}

/// generated route for
/// [_i8.UserProfilePage]
class UserProfileRoute extends _i2.PageRouteInfo<UserProfileRouteArgs> {
  UserProfileRoute({_i11.Key? key, required int userId})
      : super(UserProfileRoute.name,
            path: ':userId',
            args: UserProfileRouteArgs(key: key, userId: userId),
            rawPathParams: {'userId': userId});

  static const String name = 'UserProfileRoute';
}

class UserProfileRouteArgs {
  const UserProfileRouteArgs({this.key, required this.userId});

  final _i11.Key? key;

  final int userId;

  @override
  String toString() {
    return 'UserProfileRouteArgs{key: $key, userId: $userId}';
  }
}

/// generated route for
/// [_i9.OrderPage]
class OrderRoute extends _i2.PageRouteInfo<void> {
  const OrderRoute() : super(OrderRoute.name, path: '');

  static const String name = 'OrderRoute';
}

/// generated route for
/// [_i10.OrderHistory]
class OrderHistoryRoute extends _i2.PageRouteInfo<void> {
  const OrderHistoryRoute()
      : super(OrderHistoryRoute.name, path: 'orderHistory');

  static const String name = 'OrderHistoryRoute';
}
