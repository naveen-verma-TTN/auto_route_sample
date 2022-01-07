import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// Created by Naveen Verma on 07-01-2022
/// To The New
/// naveen.verma@tothenew.com

class CustomDialog extends StatelessWidget {
  const CustomDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Center(
        child: IconButton(
          color: Colors.redAccent,
          onPressed: () {
            context.router.pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 70.0,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
