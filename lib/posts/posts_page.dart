import 'package:auto_route/auto_route.dart';
import 'package:auto_route_sample/data/app_data.dart';
import 'package:auto_route_sample/routes/router_with_nested_routes.gr.dart';
import 'package:flutter/material.dart';

import '../components/widgets.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final posts = Post.posts;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < posts.length; i++)
                PostTile(
                  tileColor: posts[i].color,
                  postTitle: posts[i].title,
                  onTileTap: () => context.router.push(
                    SinglePostRoute(
                      postId: posts.elementAt(i).id,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
