import 'package:auto_route/auto_route.dart';
import 'package:auto_route_sample/data/app_data.dart';
import 'package:auto_route_sample/routes/router_with_nested_routes.gr.dart';
import 'package:flutter/material.dart';

import '../components/widgets.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final users = User.users;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < users.length; i++)
              UserAvatar(
                avatarColor: users[i].color,
                username: 'user${users[i].id}',
                onAvatarTap: () => context.router.push(
                  UserProfileRoute(
                    userId: users.elementAt(i).id,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

// context.navigateTo(PostRouter(children: SinglePostRote(postId: id),),),
