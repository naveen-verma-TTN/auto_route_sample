import 'package:auto_route_sample/routes/router_with_nested_routes.gr.dart';
import 'package:flutter/material.dart';

void main() => runApp(AppWidget());

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  // final _appRouter = SimpleRoute();

  final _appRouter = AppRouterWithNav();

  @override
  Widget build(BuildContext context) {
    /// Creates a [MaterialApp] that uses the [Router] instead of a [Navigator]
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Nav Bar with Nested Routes',
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
