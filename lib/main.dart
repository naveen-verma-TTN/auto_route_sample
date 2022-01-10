import 'package:auto_route/auto_route.dart';
import 'package:auto_route_sample/routes/router_with_nested_routes.gr.dart';
import 'package:auto_route_sample/users/user_guard.dart';
import 'package:flutter/material.dart';

void main() => runApp(const AppWidget());

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  // final _appRouter = SimpleRoute();
  var isLoggedIn = true;

  final _appRouter = AppRouterWithNav(userGuard: UserGuard());

  @override
  Widget build(BuildContext context) {
    /// Creates a [MaterialApp] that uses the [Router] instead of a [Navigator]
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Nav Bar with Nested Routes',
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );

    return MaterialApp.router(
        routerDelegate: AutoRouterDelegate.declarative(
          _appRouter,
          routes: (_) => [
            // if the user is logged in, they may proceed to the main App
            if (isLoggedIn)
              const HomeRouteWithNav()
            // if they are not logged in, bring them to the Login page
            else
              LoginWrapperRoute(
                onLogin: (isLoggedIn) => onResult(context, isLoggedIn),
              ),
          ],
        ),
        routeInformationParser:
            _appRouter.defaultRouteParser(includePrefixMatches: true));
  }

  onResult(BuildContext context, bool isSuccess) {
    String mesg;
    if (isSuccess) {
      mesg = 'LoggedIn successfully';
      setState(() {
        isLoggedIn = true;
      });
    } else {
      mesg = 'Login failed';
    }
    print(mesg);
  }
}
