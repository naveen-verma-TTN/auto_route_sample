import 'package:auto_route/auto_route.dart';
import 'package:auto_route_sample/constants/app_constants.dart';
import 'package:flutter/material.dart';

/// Created by Naveen Verma on 10-01-2022
/// To The New
/// naveen.verma@tothenew.com

class EmailPage extends StatelessWidget {
  EmailPage({Key? key, required this.onNext}) : super(key: key);

  final Function onNext;

  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: const Text('Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
            child: TextField(
              controller: _emailController,
              textAlign: TextAlign.center,
              decoration:
                  kCustomInputDecorator.copyWith(hintText: "Enter your email."),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () => context.router.pop(),
                iconSize: 70.0,
                color: Colors.blueGrey,
                icon: const Icon(
                  Icons.navigate_before,
                ),
              ),
              IconButton(
                onPressed: () => onNext.call(_emailController.text),
                iconSize: 70.0,
                color: Colors.blueGrey,
                icon: const Icon(
                  Icons.navigate_next,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
