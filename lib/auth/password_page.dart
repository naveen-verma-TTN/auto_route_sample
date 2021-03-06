import 'package:auto_route_sample/constants/app_constants.dart';
import 'package:flutter/material.dart';

/// Created by Naveen Verma on 10-01-2022
/// To The New
/// naveen.verma@tothenew.com

class PasswordPage extends StatelessWidget {
  PasswordPage({Key? key, required this.onNext}) : super(key: key);

  final Function onNext;

  final TextEditingController _passwordController = TextEditingController();

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
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 50.0,
            ),
            child: TextField(
              controller: _passwordController,
              obscureText: true,
              textAlign: TextAlign.center,
              decoration: kCustomInputDecorator.copyWith(
                  hintText: "Enter your password."),
            ),
          ),
          CustomOutlineButton(
            title: 'Login',
            onTap: () => onNext.call(_passwordController.text),
          ),
        ],
      ),
    );
  }
}
