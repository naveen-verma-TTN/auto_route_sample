import 'package:flutter/material.dart';

/// Created by Naveen Verma on 10-01-2022
/// To The New
/// naveen.verma@tothenew.com

const kCustomInputDecorator = InputDecoration(
  hintText: "Enter a value",
  hintStyle: TextStyle(color: Colors.grey),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueGrey, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueGrey, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton(
      {Key? key, required this.title, required this.onTap})
      : super(key: key);

  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => onTap.call(),
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.green,
        maximumSize: const Size(200.0, 100.0),
        shape: const StadiumBorder(),
      ),
      child: ListTile(
        leading: const Icon(
          Icons.login,
          color: Colors.white,
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
