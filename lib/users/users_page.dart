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
            OutlinedButton(
              onPressed: () {
                context.router.root.push(LoginWrapperRoute(onLogin: (result) {
                  String mesg;
                  if (result) {
                    mesg = 'LoggedIn successfully';
                  } else {
                    mesg = 'Login failed';
                  }
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        mesg,
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  );
                }));
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.green,
                maximumSize: const Size(200.0, 100.0),
                shape: const StadiumBorder(),
              ),
              child: const ListTile(
                leading: Icon(
                  Icons.login,
                  color: Colors.white,
                ),
                title: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// context.navigateTo(PostRouter(children: SinglePostRote(postId: id),),),
