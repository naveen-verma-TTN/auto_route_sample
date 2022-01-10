import 'package:auto_route/auto_route.dart';
import 'package:auto_route_sample/routes/router_with_nested_routes.gr.dart';
import 'package:flutter/material.dart';

/// Created by Naveen Verma on 10-01-2022
/// To The New
/// naveen.verma@tothenew.com

class LoginWrapperPage extends StatefulWidget {
  final Function(bool isLoggedIn) onLogin;

  const LoginWrapperPage({Key? key, required this.onLogin}) : super(key: key);

  @override
  _LoginWrapperPageState createState() => _LoginWrapperPageState();
}

class _LoginWrapperPageState extends State<LoginWrapperPage> {
  String email = '';
  @override
  Widget build(BuildContext context) {
    return AutoRouter.declarative(routes: (_) {
      return [
        EmailRoute(onNext: (result) {
          setState(() {
            email = result;
          });
        }),
        if (email.isNotEmpty)
          PasswordRoute(onNext: (result) async {
            try {
              var isSuccess = await validateEmailPassword(email, result);
              widget.onLogin(isSuccess);
            } catch (e) {
              print('Exception: $e');
            }
          })
      ];
    });
  }

  validateEmailPassword(String email, String password) {
    if (email == 'abc@xyz.com' && password == 'abc') {
      return true;
    } else {
      return false;
    }
  }
}
