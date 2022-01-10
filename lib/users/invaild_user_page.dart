import 'package:flutter/material.dart';

/// Created by Naveen Verma on 10-01-2022
/// To The New
/// naveen.verma@tothenew.com

class InvalidUserPage extends StatelessWidget {
  const InvalidUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.cancel,
            size: 100.0,
            color: Colors.red.shade900,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            'Invalid User'.toUpperCase(),
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
