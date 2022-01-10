import 'package:auto_route/auto_route.dart';
import 'package:auto_route_sample/routes/router_with_nested_routes.gr.dart';

/// Created by Naveen Verma on 10-01-2022
/// To The New
/// naveen.verma@tothenew.com

class UserGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final userId = resolver.route.pathParams.get("userId");
    if (userId == 3) {
      router.push(const InvalidUserRoute());
    } else {
      resolver.next(true);
    }
  }
}
