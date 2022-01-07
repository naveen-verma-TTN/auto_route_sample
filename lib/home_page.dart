// todo: step 1
import 'package:auto_route/auto_route.dart';
import 'package:auto_route_sample/routes/simple_router.gr.dart';
import 'package:flutter/material.dart';

/// Created by Naveen Verma on 04-01-2022
/// To The New
/// naveen.verma@tothenew.com

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("Simple Route example"),
        centerTitle: true,
        leading: const AutoBackButton(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            title: 'POST',
            color: Colors.redAccent,
            onPressed: () {
              // todo: step 2
              // AutoRouter.of(context).push(PostsRoute());
              //or
              context.router.push(const PostsRoute());
            },
          ),
          CustomButton(
            title: 'USERS',
            color: Colors.amber,
            onPressed: () {
              // navigating using named route
              context.router.pushNamed('users');
            },
          ),
          CustomButton(
            title: 'SETTINGS',
            color: Colors.lightGreen,
            onPressed: () {
              context.router.push(const SettingsRoute());

              // context.router.pushNamed('xyz');

              // context.router.push(const CustomDialogRoute());
            },
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  final Color color;

  const CustomButton({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        style: TextButton.styleFrom(
          fixedSize: const Size(150.0, 30.0),
          backgroundColor: color,
        ),
        onPressed: () => onPressed.call(),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
